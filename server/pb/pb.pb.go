// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.26.0
// 	protoc        v3.12.4
// source: pb/pb.proto

package pb

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type User struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id          string          `protobuf:"bytes,1,opt,name=Id,proto3" json:"Id,omitempty"`
	UID         string          `protobuf:"bytes,2,opt,name=UID,proto3" json:"UID,omitempty"`
	Name        string          `protobuf:"bytes,3,opt,name=Name,proto3" json:"Name,omitempty"`
	Address     string          `protobuf:"bytes,4,opt,name=Address,proto3" json:"Address,omitempty"`
	PhoneNumber string          `protobuf:"bytes,5,opt,name=PhoneNumber,proto3" json:"PhoneNumber,omitempty"`
	UserType    string          `protobuf:"bytes,6,opt,name=UserType,proto3" json:"UserType,omitempty"`
	Email       string          `protobuf:"bytes,7,opt,name=Email,proto3" json:"Email,omitempty"`
	PendingId   map[string]bool `protobuf:"bytes,8,rep,name=PendingId,proto3" json:"PendingId,omitempty" protobuf_key:"bytes,1,opt,name=key,proto3" protobuf_val:"varint,2,opt,name=value,proto3"`
	RequestedId map[string]bool `protobuf:"bytes,9,rep,name=RequestedId,proto3" json:"RequestedId,omitempty" protobuf_key:"bytes,1,opt,name=key,proto3" protobuf_val:"varint,2,opt,name=value,proto3"`
	ConnectedId map[string]bool `protobuf:"bytes,10,rep,name=ConnectedId,proto3" json:"ConnectedId,omitempty" protobuf_key:"bytes,1,opt,name=key,proto3" protobuf_val:"varint,2,opt,name=value,proto3"`
}

func (x *User) Reset() {
	*x = User{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_pb_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *User) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*User) ProtoMessage() {}

func (x *User) ProtoReflect() protoreflect.Message {
	mi := &file_pb_pb_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use User.ProtoReflect.Descriptor instead.
func (*User) Descriptor() ([]byte, []int) {
	return file_pb_pb_proto_rawDescGZIP(), []int{0}
}

func (x *User) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *User) GetUID() string {
	if x != nil {
		return x.UID
	}
	return ""
}

func (x *User) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *User) GetAddress() string {
	if x != nil {
		return x.Address
	}
	return ""
}

func (x *User) GetPhoneNumber() string {
	if x != nil {
		return x.PhoneNumber
	}
	return ""
}

func (x *User) GetUserType() string {
	if x != nil {
		return x.UserType
	}
	return ""
}

func (x *User) GetEmail() string {
	if x != nil {
		return x.Email
	}
	return ""
}

func (x *User) GetPendingId() map[string]bool {
	if x != nil {
		return x.PendingId
	}
	return nil
}

func (x *User) GetRequestedId() map[string]bool {
	if x != nil {
		return x.RequestedId
	}
	return nil
}

func (x *User) GetConnectedId() map[string]bool {
	if x != nil {
		return x.ConnectedId
	}
	return nil
}

type Util struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UID  string `protobuf:"bytes,1,opt,name=UID,proto3" json:"UID,omitempty"`
	Id   string `protobuf:"bytes,2,opt,name=Id,proto3" json:"Id,omitempty"`
	User *User  `protobuf:"bytes,3,opt,name=user,proto3" json:"user,omitempty"`
}

func (x *Util) Reset() {
	*x = Util{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_pb_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Util) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Util) ProtoMessage() {}

func (x *Util) ProtoReflect() protoreflect.Message {
	mi := &file_pb_pb_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Util.ProtoReflect.Descriptor instead.
func (*Util) Descriptor() ([]byte, []int) {
	return file_pb_pb_proto_rawDescGZIP(), []int{1}
}

func (x *Util) GetUID() string {
	if x != nil {
		return x.UID
	}
	return ""
}

func (x *Util) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *Util) GetUser() *User {
	if x != nil {
		return x.User
	}
	return nil
}

type StatusSuccessful struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Status bool `protobuf:"varint,1,opt,name=status,proto3" json:"status,omitempty"`
}

func (x *StatusSuccessful) Reset() {
	*x = StatusSuccessful{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_pb_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *StatusSuccessful) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*StatusSuccessful) ProtoMessage() {}

func (x *StatusSuccessful) ProtoReflect() protoreflect.Message {
	mi := &file_pb_pb_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use StatusSuccessful.ProtoReflect.Descriptor instead.
func (*StatusSuccessful) Descriptor() ([]byte, []int) {
	return file_pb_pb_proto_rawDescGZIP(), []int{2}
}

func (x *StatusSuccessful) GetStatus() bool {
	if x != nil {
		return x.Status
	}
	return false
}

var File_pb_pb_proto protoreflect.FileDescriptor

var file_pb_pb_proto_rawDesc = []byte{
	0x0a, 0x0b, 0x70, 0x62, 0x2f, 0x70, 0x62, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x02, 0x70,
	0x62, 0x22, 0x99, 0x04, 0x0a, 0x04, 0x55, 0x73, 0x65, 0x72, 0x12, 0x0e, 0x0a, 0x02, 0x49, 0x64,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x49, 0x64, 0x12, 0x10, 0x0a, 0x03, 0x55, 0x49,
	0x44, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x55, 0x49, 0x44, 0x12, 0x12, 0x0a, 0x04,
	0x4e, 0x61, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x4e, 0x61, 0x6d, 0x65,
	0x12, 0x18, 0x0a, 0x07, 0x41, 0x64, 0x64, 0x72, 0x65, 0x73, 0x73, 0x18, 0x04, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x07, 0x41, 0x64, 0x64, 0x72, 0x65, 0x73, 0x73, 0x12, 0x20, 0x0a, 0x0b, 0x50, 0x68,
	0x6f, 0x6e, 0x65, 0x4e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x18, 0x05, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x0b, 0x50, 0x68, 0x6f, 0x6e, 0x65, 0x4e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x12, 0x1a, 0x0a, 0x08,
	0x55, 0x73, 0x65, 0x72, 0x54, 0x79, 0x70, 0x65, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08,
	0x55, 0x73, 0x65, 0x72, 0x54, 0x79, 0x70, 0x65, 0x12, 0x14, 0x0a, 0x05, 0x45, 0x6d, 0x61, 0x69,
	0x6c, 0x18, 0x07, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x45, 0x6d, 0x61, 0x69, 0x6c, 0x12, 0x35,
	0x0a, 0x09, 0x50, 0x65, 0x6e, 0x64, 0x69, 0x6e, 0x67, 0x49, 0x64, 0x18, 0x08, 0x20, 0x03, 0x28,
	0x0b, 0x32, 0x17, 0x2e, 0x70, 0x62, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x2e, 0x50, 0x65, 0x6e, 0x64,
	0x69, 0x6e, 0x67, 0x49, 0x64, 0x45, 0x6e, 0x74, 0x72, 0x79, 0x52, 0x09, 0x50, 0x65, 0x6e, 0x64,
	0x69, 0x6e, 0x67, 0x49, 0x64, 0x12, 0x3b, 0x0a, 0x0b, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x65, 0x64, 0x49, 0x64, 0x18, 0x09, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x19, 0x2e, 0x70, 0x62, 0x2e,
	0x55, 0x73, 0x65, 0x72, 0x2e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x65, 0x64, 0x49, 0x64,
	0x45, 0x6e, 0x74, 0x72, 0x79, 0x52, 0x0b, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x65, 0x64,
	0x49, 0x64, 0x12, 0x3b, 0x0a, 0x0b, 0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x65, 0x64, 0x49,
	0x64, 0x18, 0x0a, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x19, 0x2e, 0x70, 0x62, 0x2e, 0x55, 0x73, 0x65,
	0x72, 0x2e, 0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x65, 0x64, 0x49, 0x64, 0x45, 0x6e, 0x74,
	0x72, 0x79, 0x52, 0x0b, 0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x65, 0x64, 0x49, 0x64, 0x1a,
	0x3c, 0x0a, 0x0e, 0x50, 0x65, 0x6e, 0x64, 0x69, 0x6e, 0x67, 0x49, 0x64, 0x45, 0x6e, 0x74, 0x72,
	0x79, 0x12, 0x10, 0x0a, 0x03, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03,
	0x6b, 0x65, 0x79, 0x12, 0x14, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x08, 0x52, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x3a, 0x02, 0x38, 0x01, 0x1a, 0x3e, 0x0a,
	0x10, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x65, 0x64, 0x49, 0x64, 0x45, 0x6e, 0x74, 0x72,
	0x79, 0x12, 0x10, 0x0a, 0x03, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03,
	0x6b, 0x65, 0x79, 0x12, 0x14, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x08, 0x52, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x3a, 0x02, 0x38, 0x01, 0x1a, 0x3e, 0x0a,
	0x10, 0x43, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x65, 0x64, 0x49, 0x64, 0x45, 0x6e, 0x74, 0x72,
	0x79, 0x12, 0x10, 0x0a, 0x03, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03,
	0x6b, 0x65, 0x79, 0x12, 0x14, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x08, 0x52, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x3a, 0x02, 0x38, 0x01, 0x22, 0x46, 0x0a,
	0x04, 0x55, 0x74, 0x69, 0x6c, 0x12, 0x10, 0x0a, 0x03, 0x55, 0x49, 0x44, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x03, 0x55, 0x49, 0x44, 0x12, 0x0e, 0x0a, 0x02, 0x49, 0x64, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x02, 0x49, 0x64, 0x12, 0x1c, 0x0a, 0x04, 0x75, 0x73, 0x65, 0x72, 0x18,
	0x03, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x08, 0x2e, 0x70, 0x62, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x52,
	0x04, 0x75, 0x73, 0x65, 0x72, 0x22, 0x2a, 0x0a, 0x10, 0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x53,
	0x75, 0x63, 0x63, 0x65, 0x73, 0x73, 0x66, 0x75, 0x6c, 0x12, 0x16, 0x0a, 0x06, 0x73, 0x74, 0x61,
	0x74, 0x75, 0x73, 0x18, 0x01, 0x20, 0x01, 0x28, 0x08, 0x52, 0x06, 0x73, 0x74, 0x61, 0x74, 0x75,
	0x73, 0x32, 0xe4, 0x03, 0x0a, 0x0d, 0x44, 0x6f, 0x6e, 0x6f, 0x72, 0x50, 0x61, 0x74, 0x69, 0x65,
	0x6e, 0x74, 0x73, 0x12, 0x22, 0x0a, 0x0a, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x55, 0x73, 0x65,
	0x72, 0x12, 0x08, 0x2e, 0x70, 0x62, 0x2e, 0x55, 0x74, 0x69, 0x6c, 0x1a, 0x08, 0x2e, 0x70, 0x62,
	0x2e, 0x55, 0x73, 0x65, 0x72, 0x22, 0x00, 0x12, 0x1d, 0x0a, 0x05, 0x4c, 0x6f, 0x67, 0x69, 0x6e,
	0x12, 0x08, 0x2e, 0x70, 0x62, 0x2e, 0x55, 0x74, 0x69, 0x6c, 0x1a, 0x08, 0x2e, 0x70, 0x62, 0x2e,
	0x55, 0x73, 0x65, 0x72, 0x22, 0x00, 0x12, 0x2c, 0x0a, 0x0a, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65,
	0x55, 0x73, 0x65, 0x72, 0x12, 0x08, 0x2e, 0x70, 0x62, 0x2e, 0x55, 0x74, 0x69, 0x6c, 0x1a, 0x14,
	0x2e, 0x70, 0x62, 0x2e, 0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x53, 0x75, 0x63, 0x63, 0x65, 0x73,
	0x73, 0x66, 0x75, 0x6c, 0x12, 0x22, 0x0a, 0x0a, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x55, 0x73,
	0x65, 0x72, 0x12, 0x08, 0x2e, 0x70, 0x62, 0x2e, 0x55, 0x74, 0x69, 0x6c, 0x1a, 0x08, 0x2e, 0x70,
	0x62, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x22, 0x00, 0x12, 0x1f, 0x0a, 0x07, 0x47, 0x65, 0x74, 0x55,
	0x73, 0x65, 0x72, 0x12, 0x08, 0x2e, 0x70, 0x62, 0x2e, 0x55, 0x74, 0x69, 0x6c, 0x1a, 0x08, 0x2e,
	0x70, 0x62, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x22, 0x00, 0x12, 0x26, 0x0a, 0x0c, 0x47, 0x65, 0x74,
	0x41, 0x6c, 0x6c, 0x44, 0x6f, 0x6e, 0x6f, 0x72, 0x73, 0x12, 0x08, 0x2e, 0x70, 0x62, 0x2e, 0x55,
	0x74, 0x69, 0x6c, 0x1a, 0x08, 0x2e, 0x70, 0x62, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x22, 0x00, 0x30,
	0x01, 0x12, 0x28, 0x0a, 0x0e, 0x47, 0x65, 0x74, 0x41, 0x6c, 0x6c, 0x50, 0x61, 0x74, 0x69, 0x65,
	0x6e, 0x74, 0x73, 0x12, 0x08, 0x2e, 0x70, 0x62, 0x2e, 0x55, 0x74, 0x69, 0x6c, 0x1a, 0x08, 0x2e,
	0x70, 0x62, 0x2e, 0x55, 0x73, 0x65, 0x72, 0x22, 0x00, 0x30, 0x01, 0x12, 0x2f, 0x0a, 0x0b, 0x53,
	0x65, 0x6e, 0x64, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x08, 0x2e, 0x70, 0x62, 0x2e,
	0x55, 0x74, 0x69, 0x6c, 0x1a, 0x14, 0x2e, 0x70, 0x62, 0x2e, 0x53, 0x74, 0x61, 0x74, 0x75, 0x73,
	0x53, 0x75, 0x63, 0x63, 0x65, 0x73, 0x73, 0x66, 0x75, 0x6c, 0x22, 0x00, 0x12, 0x31, 0x0a, 0x0d,
	0x41, 0x63, 0x63, 0x65, 0x70, 0x74, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x08, 0x2e,
	0x70, 0x62, 0x2e, 0x55, 0x74, 0x69, 0x6c, 0x1a, 0x14, 0x2e, 0x70, 0x62, 0x2e, 0x53, 0x74, 0x61,
	0x74, 0x75, 0x73, 0x53, 0x75, 0x63, 0x63, 0x65, 0x73, 0x73, 0x66, 0x75, 0x6c, 0x22, 0x00, 0x12,
	0x31, 0x0a, 0x0d, 0x43, 0x61, 0x6e, 0x63, 0x65, 0x6c, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x12, 0x08, 0x2e, 0x70, 0x62, 0x2e, 0x55, 0x74, 0x69, 0x6c, 0x1a, 0x14, 0x2e, 0x70, 0x62, 0x2e,
	0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x53, 0x75, 0x63, 0x63, 0x65, 0x73, 0x73, 0x66, 0x75, 0x6c,
	0x22, 0x00, 0x12, 0x34, 0x0a, 0x10, 0x43, 0x61, 0x6e, 0x63, 0x65, 0x6c, 0x43, 0x6f, 0x6e, 0x6e,
	0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x08, 0x2e, 0x70, 0x62, 0x2e, 0x55, 0x74, 0x69, 0x6c,
	0x1a, 0x14, 0x2e, 0x70, 0x62, 0x2e, 0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x53, 0x75, 0x63, 0x63,
	0x65, 0x73, 0x73, 0x66, 0x75, 0x6c, 0x22, 0x00, 0x42, 0x05, 0x5a, 0x03, 0x2f, 0x70, 0x62, 0x62,
	0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_pb_pb_proto_rawDescOnce sync.Once
	file_pb_pb_proto_rawDescData = file_pb_pb_proto_rawDesc
)

func file_pb_pb_proto_rawDescGZIP() []byte {
	file_pb_pb_proto_rawDescOnce.Do(func() {
		file_pb_pb_proto_rawDescData = protoimpl.X.CompressGZIP(file_pb_pb_proto_rawDescData)
	})
	return file_pb_pb_proto_rawDescData
}

var file_pb_pb_proto_msgTypes = make([]protoimpl.MessageInfo, 6)
var file_pb_pb_proto_goTypes = []interface{}{
	(*User)(nil),             // 0: pb.User
	(*Util)(nil),             // 1: pb.Util
	(*StatusSuccessful)(nil), // 2: pb.StatusSuccessful
	nil,                      // 3: pb.User.PendingIdEntry
	nil,                      // 4: pb.User.RequestedIdEntry
	nil,                      // 5: pb.User.ConnectedIdEntry
}
var file_pb_pb_proto_depIdxs = []int32{
	3,  // 0: pb.User.PendingId:type_name -> pb.User.PendingIdEntry
	4,  // 1: pb.User.RequestedId:type_name -> pb.User.RequestedIdEntry
	5,  // 2: pb.User.ConnectedId:type_name -> pb.User.ConnectedIdEntry
	0,  // 3: pb.Util.user:type_name -> pb.User
	1,  // 4: pb.DonorPatients.CreateUser:input_type -> pb.Util
	1,  // 5: pb.DonorPatients.Login:input_type -> pb.Util
	1,  // 6: pb.DonorPatients.DeleteUser:input_type -> pb.Util
	1,  // 7: pb.DonorPatients.UpdateUser:input_type -> pb.Util
	1,  // 8: pb.DonorPatients.GetUser:input_type -> pb.Util
	1,  // 9: pb.DonorPatients.GetAllDonors:input_type -> pb.Util
	1,  // 10: pb.DonorPatients.GetAllPatients:input_type -> pb.Util
	1,  // 11: pb.DonorPatients.SendRequest:input_type -> pb.Util
	1,  // 12: pb.DonorPatients.AcceptRequest:input_type -> pb.Util
	1,  // 13: pb.DonorPatients.CancelRequest:input_type -> pb.Util
	1,  // 14: pb.DonorPatients.CancelConnection:input_type -> pb.Util
	0,  // 15: pb.DonorPatients.CreateUser:output_type -> pb.User
	0,  // 16: pb.DonorPatients.Login:output_type -> pb.User
	2,  // 17: pb.DonorPatients.DeleteUser:output_type -> pb.StatusSuccessful
	0,  // 18: pb.DonorPatients.UpdateUser:output_type -> pb.User
	0,  // 19: pb.DonorPatients.GetUser:output_type -> pb.User
	0,  // 20: pb.DonorPatients.GetAllDonors:output_type -> pb.User
	0,  // 21: pb.DonorPatients.GetAllPatients:output_type -> pb.User
	2,  // 22: pb.DonorPatients.SendRequest:output_type -> pb.StatusSuccessful
	2,  // 23: pb.DonorPatients.AcceptRequest:output_type -> pb.StatusSuccessful
	2,  // 24: pb.DonorPatients.CancelRequest:output_type -> pb.StatusSuccessful
	2,  // 25: pb.DonorPatients.CancelConnection:output_type -> pb.StatusSuccessful
	15, // [15:26] is the sub-list for method output_type
	4,  // [4:15] is the sub-list for method input_type
	4,  // [4:4] is the sub-list for extension type_name
	4,  // [4:4] is the sub-list for extension extendee
	0,  // [0:4] is the sub-list for field type_name
}

func init() { file_pb_pb_proto_init() }
func file_pb_pb_proto_init() {
	if File_pb_pb_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_pb_pb_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*User); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pb_pb_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Util); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pb_pb_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*StatusSuccessful); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_pb_pb_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   6,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_pb_pb_proto_goTypes,
		DependencyIndexes: file_pb_pb_proto_depIdxs,
		MessageInfos:      file_pb_pb_proto_msgTypes,
	}.Build()
	File_pb_pb_proto = out.File
	file_pb_pb_proto_rawDesc = nil
	file_pb_pb_proto_goTypes = nil
	file_pb_pb_proto_depIdxs = nil
}