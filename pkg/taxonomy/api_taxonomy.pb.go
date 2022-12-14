// Code generated by protoc-gen-go. DO NOT EDIT.
// source: api_taxonomy.proto

package taxonomy

import (
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

type Taxonomy struct {
	// @gotags: dynamo:"TaxonomyBrands"
	Brands []string `protobuf:"bytes,1,rep,name=Brands,proto3" json:"Brands,omitempty" dynamo:"TaxonomyBrands"`
	// @gotags: dynamo:"TaxonomyUses"
	Uses []string `protobuf:"bytes,2,rep,name=Uses,proto3" json:"Uses,omitempty" dynamo:"TaxonomyUses"`
	// @gotags: dynamo:"TaxonomyColors"
	Colors []string `protobuf:"bytes,3,rep,name=Colors,proto3" json:"Colors,omitempty" dynamo:"TaxonomyColors"`
	// @gotags: dynamo:"TaxonomyDesigns"
	Designs []string `protobuf:"bytes,4,rep,name=Designs,proto3" json:"Designs,omitempty" dynamo:"TaxonomyDesigns"`
	// @gotags: dynamo:"TaxonomyCategories"
	Categories           []string `protobuf:"bytes,5,rep,name=Categories,proto3" json:"Categories,omitempty" dynamo:"TaxonomyCategories"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *Taxonomy) Reset()         { *m = Taxonomy{} }
func (m *Taxonomy) String() string { return proto.CompactTextString(m) }
func (*Taxonomy) ProtoMessage()    {}
func (*Taxonomy) Descriptor() ([]byte, []int) {
	return fileDescriptor_a73ed9dc15e79a24, []int{0}
}

func (m *Taxonomy) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_Taxonomy.Unmarshal(m, b)
}
func (m *Taxonomy) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_Taxonomy.Marshal(b, m, deterministic)
}
func (m *Taxonomy) XXX_Merge(src proto.Message) {
	xxx_messageInfo_Taxonomy.Merge(m, src)
}
func (m *Taxonomy) XXX_Size() int {
	return xxx_messageInfo_Taxonomy.Size(m)
}
func (m *Taxonomy) XXX_DiscardUnknown() {
	xxx_messageInfo_Taxonomy.DiscardUnknown(m)
}

var xxx_messageInfo_Taxonomy proto.InternalMessageInfo

func (m *Taxonomy) GetBrands() []string {
	if m != nil {
		return m.Brands
	}
	return nil
}

func (m *Taxonomy) GetUses() []string {
	if m != nil {
		return m.Uses
	}
	return nil
}

func (m *Taxonomy) GetColors() []string {
	if m != nil {
		return m.Colors
	}
	return nil
}

func (m *Taxonomy) GetDesigns() []string {
	if m != nil {
		return m.Designs
	}
	return nil
}

func (m *Taxonomy) GetCategories() []string {
	if m != nil {
		return m.Categories
	}
	return nil
}

func init() {
	proto.RegisterType((*Taxonomy)(nil), "magnoliafabrics.Taxonomy")
}

func init() {
	proto.RegisterFile("api_taxonomy.proto", fileDescriptor_a73ed9dc15e79a24)
}

var fileDescriptor_a73ed9dc15e79a24 = []byte{
	// 201 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x4c, 0x8f, 0x3f, 0x4f, 0x87, 0x30,
	0x10, 0x86, 0xf3, 0x13, 0x44, 0xed, 0x62, 0xd2, 0xc1, 0x74, 0x32, 0xc6, 0xc9, 0x05, 0x3a, 0x18,
	0xe3, 0x0e, 0x7e, 0x02, 0xff, 0x0d, 0x2e, 0xe6, 0xc0, 0x5a, 0x2e, 0xd2, 0x5e, 0xd3, 0x2b, 0x89,
	0x7c, 0x03, 0x3f, 0xb6, 0xb1, 0x40, 0xe2, 0x76, 0xcf, 0xfb, 0x3e, 0xc3, 0xbd, 0x42, 0x42, 0xc0,
	0xf7, 0x04, 0xdf, 0xe4, 0xc9, 0x2d, 0x4d, 0x88, 0x94, 0x48, 0x9e, 0x3b, 0xb0, 0x9e, 0x26, 0x84,
	0x4f, 0xe8, 0x23, 0x0e, 0x7c, 0xfd, 0x73, 0x10, 0xa7, 0xcf, 0x9b, 0x23, 0x2f, 0x44, 0xd5, 0x46,
	0xf0, 0x1f, 0xac, 0x0e, 0x57, 0xc5, 0xcd, 0xd9, 0xe3, 0x46, 0x52, 0x8a, 0xf2, 0x85, 0x0d, 0xab,
	0xa3, 0x9c, 0xe6, 0xfb, 0xcf, 0xed, 0x68, 0xa2, 0xc8, 0xaa, 0x58, 0xdd, 0x95, 0xa4, 0x12, 0x27,
	0x0f, 0x86, 0xd1, 0x7a, 0x56, 0x65, 0x2e, 0x76, 0x94, 0x97, 0x42, 0x74, 0x90, 0x8c, 0xa5, 0x88,
	0x86, 0xd5, 0x71, 0x2e, 0xff, 0x25, 0xed, 0xfd, 0xdb, 0x9d, 0xc5, 0x34, 0xce, 0x7d, 0x33, 0x90,
	0xd3, 0xaf, 0x98, 0x60, 0xc2, 0xb4, 0xd4, 0x4f, 0x34, 0xa7, 0x51, 0x3b, 0xb0, 0xdb, 0xcb, 0x35,
	0x04, 0xd4, 0xe1, 0xcb, 0xea, 0x7d, 0x5a, 0x5f, 0xe5, 0x6d, 0xb7, 0xbf, 0x01, 0x00, 0x00, 0xff,
	0xff, 0x09, 0xc3, 0xcd, 0xd5, 0xf1, 0x00, 0x00, 0x00,
}
