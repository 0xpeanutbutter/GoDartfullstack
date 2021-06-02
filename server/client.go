package main

import (
	"awesomeProject1/pb"
	"context"
	"fmt"
	"google.golang.org/grpc"
	"log"
	"time"
)

const (
	address     = "localhost:50051"
)

func main(){
	conn, err := grpc.Dial(address, grpc.WithInsecure(), grpc.WithBlock())
	if err !=nil{
		fmt.Println("couldn't connect")
	}
	defer conn.Close()

	c := pb.NewDonorPatientsClient(conn)
	ctx, cancel := context.WithTimeout(context.Background(),time.Second)
	defer cancel()
	user1 := &pb.User{Name: "us4", Address: "basdsdg", PhoneNumber: "85659", UserType: "Patient", Email: "dwd@gmail.com",
		RequestedId: make(map[string]bool), ConnectedId: make(map[string]bool), PendingId: make(map[string]bool)}
	in1 := &pb.Util{User: user1}
	r1, err1 := c.CreateUser(ctx, in1)
	if err1 != nil {
		log.Fatalf("could not create user,:%v", err1)
	}
	fmt.Println(r1)


}