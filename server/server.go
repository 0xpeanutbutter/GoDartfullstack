package main

import (
	"context"
	"flag"
	"fmt"
	"google.golang.org/grpc"
	"strconv"
	"sync"
	"time"

	pb "awesomeProject1/pb"
	"log"
	"net"
)

const port = ":50051"

type server struct {
	pb.UnimplementedDonorPatientsServer
}
var (
	MapUser map[string]*pb.User = make(map[string]*pb.User)
	userMapId map[string]*pb.User = make(map[string]*pb.User)
	waitGroup sync.WaitGroup
	mutex sync.Mutex
	createID int = 1
)

func generateCode() string{
//	n := time.Now().UnixNano()
//	str := strconv.FormatInt(n,10)

	return strconv.Itoa(int(time.Now().Unix()))

}
// create user working
// tested and working

func (s server) CreateUser(ctx context.Context, util *pb.Util)(*pb.User, error){
	waitGroup.Add(1)
	mutex.Lock()
	util.User.Id = fmt.Sprint(createID)
	util.Id = fmt.Sprint(createID)
	util.User.UID = generateCode()
	util.User.ConnectedId = make(map[string]bool)
	util.User.RequestedId = make(map[string]bool)
	util.User.PendingId = make(map[string]bool)
	MapUser[util.User.UID] = util.User
	userMapId[fmt.Sprint(createID)] = util.User
	createID++
	mutex.Unlock()
	waitGroup.Done()
	return util.User, nil
}

// tested and working

func (s server) Login (ctx context.Context,util *pb.Util)(*pb.User, error){
	user, ok := MapUser	[util.UID]
	if ok {
		if user.Id == util.Id {
			return user, nil
		}
	}else{
		fmt.Println("Invalid secret code")
	}
	return &pb.User{},nil
}

//will be safe to use

func (s server) DeleteUser (ctx context.Context, util *pb.Util) (*pb.StatusSuccessful,error) {
	user, ok := MapUser[util.UID]
	if ok {
		fmt.Println("Deleted")
		delete(MapUser,user.UID)
		return &pb.StatusSuccessful{Status: true}, nil
	}else{
		return &pb.StatusSuccessful{Status: false}, nil
	}
}
// will have eer

func (s server) CancelRequest(ctx context.Context, util *pb.Util)(*pb.StatusSuccessful, error){

	user, ok := MapUser[util.UID]
	if ok {
		user1 := userMapId[util.Id]
		if user.UserType != user1.UserType {
			delete(user.RequestedId, user1.Id)
			delete(user1.PendingId, user.Id)
			MapUser[user.UID] = user
			MapUser[user1.UID] = user1
			userMapId[user.Id] = user
			userMapId[user1.Id] = user1
			return &pb.StatusSuccessful{Status: true}, nil
		}
	}
	return &pb.StatusSuccessful{Status: false},nil
}
// corrected

func (s server) SendRequest( ctx context.Context, util *pb.Util)(*pb.StatusSuccessful, error){
	user, ok := MapUser[util.UID]
	fmt.Println("sending request")
	fmt.Println(userMapId)
	if ok{
		user1 := userMapId[util.Id]
		if user.UserType != user1.UserType {
			user.RequestedId[user1.Id] = true
			user1.PendingId[user.Id] = true
			MapUser[user.UID] = user
			MapUser[user1.UID] = user1
			userMapId[user.Id] = user
			userMapId[user1.Id] = user1
			return &pb.StatusSuccessful{Status: true}, nil
		}
	}
	return &pb.StatusSuccessful{Status: false},nil
}
// will have error

func (s server) AcceptRequest( ctx context.Context, util *pb.Util)(*pb.StatusSuccessful, error){
	user, ok := MapUser[util.UID]
	if ok{
		user1 := userMapId[util.Id]
		if user.UserType != user1.UserType {
			delete(user.PendingId, user1.Id)
			delete(user1.RequestedId, user.Id)
			user.ConnectedId[user1.Id] = true
			user1.ConnectedId[user.Id] = true
			MapUser[user.UID] = user
			MapUser[user1.UID] = user1
			userMapId[user.Id] = user
			userMapId[user1.Id] = user1

			fmt.Print("\n\n\naccepted\n")
			fmt.Println(MapUser)
			return &pb.StatusSuccessful{Status: true}, nil
		}
	}
	fmt.Println("Cannot accept due to error")
	return &pb.StatusSuccessful{Status: false},nil
}
func (s server) CancelConnection( ctx context.Context, util *pb.Util)(*pb.StatusSuccessful, error){
	user, ok := MapUser[util.UID]
	if ok {
		user1 := userMapId[util.Id]
		if user.UserType != user1.UserType {
			delete(user.ConnectedId, user1.Id)
			delete(user1.ConnectedId, user.Id)
			MapUser[user.UID] = user
			MapUser[user1.UID] = user1
			userMapId[user.Id] = user
			userMapId[user1.Id] = user1
			return &pb.StatusSuccessful{Status: true}, nil
		}
	}
	return &pb.StatusSuccessful{Status: false}, nil
}

// will have error

func (s server) GetAllPatients ( util *pb.Util, srv pb.DonorPatients_GetAllPatientsServer) error {
	user, ok := MapUser[util.UID]

	if ok {
		if user.UserType == "Patient"{
			for _, user1 := range MapUser{
				if user1.UserType != user.UserType{
					pUser := user1
					pUser.UID = ""
					_, ok := pUser.ConnectedId[util.Id]
					if !ok {
						pUser.Address = ""
						pUser.PhoneNumber = ""
						pUser.ConnectedId = make(map[string]bool)
						pUser.RequestedId = make(map[string]bool)
						pUser.PendingId = make(map[string]bool)
					}
					if err := srv.Send(pUser); err != nil{
						log.Printf("error while sending")
						return err
					}
				}
			}
		}
	}
	return nil
}
// will have error

func (s server) GetAllDonors(util *pb.Util, srv pb.DonorPatients_GetAllDonorsServer) error{
	user, ok := MapUser[util.UID]
	if ok {
		if user.UserType == "Donor"{
			for _, user1 := range MapUser{
				if user1.UserType == user.UserType {
					pUser := user1
					pUser.UID = ""
					_, ok := pUser.ConnectedId[util.Id]
					if !ok {
						pUser.Address = ""
						pUser.PhoneNumber = ""
						pUser.ConnectedId = make(map[string]bool)
						pUser.RequestedId = make(map[string]bool)
						pUser.PendingId = make(map[string]bool)
					}
					if err := srv.Send(pUser); err!= nil {
						log.Printf("Error while sending")
						return err
					}
				}

			}
		}
	}
	return nil
}
//  err
func (s server) GetUser (ctx context.Context, util *pb.Util)( *pb.User, error){
	user, ok := MapUser[util.UID]
	if ok {
		user1 := userMapId[util.Id]
		if user1.UserType == user.UserType{
			fmt.Println("getuser verified")
			pUser := user1
			pUser.UID = ""
			_, ok := pUser.ConnectedId[util.Id]
			if !ok {
				pUser.Address = ""
				pUser.PhoneNumber = ""
				pUser.ConnectedId = make(map[string]bool)
				pUser.RequestedId = make(map[string]bool)
				pUser.PendingId = make(map[string]bool)
			}
			return pUser, nil
		}else{
			return &pb.User{}, nil
		}
	}else{
		return &pb.User{},nil
	}
}
// tested and done

func (s server) UpdateUser(ctx context.Context, util *pb.Util) (*pb.User, error){
	user, ok := MapUser[util.UID]
	if ok {
		changedUser := util.User
		if len(changedUser.Address)!= 0{
			user.Address = changedUser.Address
		}
		if len(changedUser.Email)!= 0{
			user.Email = changedUser.Email
		}
		if len(changedUser.Name)!= 0{
			user.Name = changedUser.Name
		}
		if len(changedUser.PhoneNumber)!=0 {
			user.PhoneNumber = changedUser.PhoneNumber
		}
		MapUser[util.UID] = user
		return user,nil
	}else{
		return &pb.User{}, nil
	}
}

//tested and done
func main(){
	flag.Parse()
	lis, err := net.Listen("tcp",port)
	if err!= nil{
		log.Fatal("cannot listen",err)
	}
	s := grpc.NewServer()
	pb.RegisterDonorPatientsServer(s,server{})
	if err:= s.Serve(lis);err!=nil{
		log.Fatal("failed to serve")
	}

}