// Code generated by protoc-gen-go. DO NOT EDIT.
// source: taxonomy.proto

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
	return fileDescriptor_1b3e90e04276df48, []int{0}
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
	proto.RegisterFile("taxonomy.proto", fileDescriptor_1b3e90e04276df48)
}

var fileDescriptor_1b3e90e04276df48 = []byte{
	// 200 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0xe2, 0x2b, 0x49, 0xac, 0xc8,
	0xcf, 0xcb, 0xcf, 0xad, 0xd4, 0x2b, 0x28, 0xca, 0x2f, 0xc9, 0x17, 0xe2, 0xcf, 0x4d, 0x4c, 0xcf,
	0xcb, 0xcf, 0xc9, 0x4c, 0x4c, 0x4b, 0x4c, 0x2a, 0xca, 0x4c, 0x2e, 0x56, 0xea, 0x60, 0xe4, 0xe2,
	0x08, 0x81, 0xaa, 0x11, 0x12, 0xe3, 0x62, 0x73, 0x2a, 0x4a, 0xcc, 0x4b, 0x29, 0x96, 0x60, 0x54,
	0x60, 0xd6, 0xe0, 0x0c, 0x82, 0xf2, 0x84, 0x84, 0xb8, 0x58, 0x42, 0x8b, 0x53, 0x8b, 0x25, 0x98,
	0xc0, 0xa2, 0x60, 0x36, 0x48, 0xad, 0x73, 0x7e, 0x4e, 0x7e, 0x51, 0xb1, 0x04, 0x33, 0x44, 0x2d,
	0x84, 0x27, 0x24, 0xc1, 0xc5, 0xee, 0x92, 0x5a, 0x9c, 0x99, 0x9e, 0x57, 0x2c, 0xc1, 0x02, 0x96,
	0x80, 0x71, 0x85, 0xe4, 0xb8, 0xb8, 0x9c, 0x13, 0x4b, 0x52, 0xd3, 0xf3, 0x8b, 0x32, 0x53, 0x8b,
	0x25, 0x58, 0xc1, 0x92, 0x48, 0x22, 0x4e, 0xb6, 0x51, 0xd6, 0xe9, 0x99, 0x25, 0x19, 0xa5, 0x49,
	0x7a, 0xc9, 0xf9, 0xb9, 0xfa, 0x61, 0x99, 0x25, 0x89, 0x39, 0x99, 0x25, 0x95, 0xba, 0xc1, 0xf9,
	0xa5, 0x25, 0x19, 0xfa, 0x30, 0x77, 0xeb, 0x42, 0x1d, 0xae, 0x9b, 0x58, 0x90, 0xa9, 0x5f, 0x90,
	0x9d, 0xae, 0x0f, 0xf3, 0x60, 0x12, 0x1b, 0xd8, 0x87, 0xc6, 0x80, 0x00, 0x00, 0x00, 0xff, 0xff,
	0x14, 0x4e, 0x96, 0xba, 0xf3, 0x00, 0x00, 0x00,
}