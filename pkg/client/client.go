package client

import (
	"context"
	"crypto/tls"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
	"google.golang.org/grpc/metadata"

	"github.com/Vitality-South/magfabrics-api/pkg/cleaningcode"
	"github.com/Vitality-South/magfabrics-api/pkg/discontinuedfabric"
	"github.com/Vitality-South/magfabrics-api/pkg/fabric"
	"github.com/Vitality-South/magfabrics-api/pkg/inventory"
	"github.com/Vitality-South/magfabrics-api/pkg/taxonomy"
	"github.com/Vitality-South/magfabrics-api/service"
)

const (
	ServerName         = `grpc.magfabrics.com`
	ServerNameWithPort = `grpc.magfabrics.com:443`
)

type Client struct {
	conn   *grpc.ClientConn
	client service.MagnoliaFabricsServiceClient
	apiKey string
}

func NewClient(apiKey string) (*Client, error) {
	var opts []grpc.DialOption

	opts = append(opts, grpc.WithTransportCredentials(credentials.NewTLS(&tls.Config{
		ServerName: ServerName,
		MinVersion: tls.VersionTLS12,
	})))

	conn, cerr := grpc.Dial(ServerNameWithPort, opts...)

	if cerr != nil {
		return nil, cerr
	}

	c := Client{
		conn:   conn,
		client: service.NewMagnoliaFabricsServiceClient(conn),
		apiKey: apiKey,
	}

	return &c, nil
}

func (c *Client) Close() {
	c.conn.Close()
}

func (c *Client) GetAllFabrics(ctx context.Context) ([]*fabric.Fabric, error) {
	req := &service.GetAllFabricsRequest{}

	apictx := metadata.AppendToOutgoingContext(ctx, "x-api-key", c.apiKey)

	var callopts []grpc.CallOption

	resp, rerr := c.client.GetAllFabrics(apictx, req, callopts...)

	if rerr != nil {
		return []*fabric.Fabric{}, rerr
	}

	return resp.Fabrics, nil
}

func (c *Client) GetAllFabricsWithoutInventory(ctx context.Context) ([]*fabric.Fabric, error) {
	req := &service.GetAllFabricsWithoutInventoryRequest{}

	apictx := metadata.AppendToOutgoingContext(ctx, "x-api-key", c.apiKey)

	var callopts []grpc.CallOption

	resp, rerr := c.client.GetAllFabricsWithoutInventory(apictx, req, callopts...)

	if rerr != nil {
		return nil, rerr
	}

	return resp.Fabrics, nil
}

func (c *Client) GetAllInventory(ctx context.Context) ([]*inventory.Inventory, error) {
	req := &service.GetAllInventoryRequest{}

	apictx := metadata.AppendToOutgoingContext(ctx, "x-api-key", c.apiKey)

	var callopts []grpc.CallOption

	resp, rerr := c.client.GetAllInventory(apictx, req, callopts...)

	if rerr != nil {
		return nil, rerr
	}

	return resp.Inventory, nil
}

func (c *Client) GetFabricByID(ctx context.Context) (*fabric.Fabric, error) {
	req := &service.GetFabricByIDRequest{}

	apictx := metadata.AppendToOutgoingContext(ctx, "x-api-key", c.apiKey)

	var callopts []grpc.CallOption

	resp, rerr := c.client.GetFabricByID(apictx, req, callopts...)

	if rerr != nil {
		return nil, rerr
	}

	return resp.Fabric, nil
}

func (c *Client) GetFabricByName(ctx context.Context) (*fabric.Fabric, error) {
	req := &service.GetFabricByNameRequest{}

	apictx := metadata.AppendToOutgoingContext(ctx, "x-api-key", c.apiKey)

	var callopts []grpc.CallOption

	resp, rerr := c.client.GetFabricByName(apictx, req, callopts...)

	if rerr != nil {
		return nil, rerr
	}

	return resp.Fabric, nil
}

func (c *Client) GetAllFabricTaxonomy(ctx context.Context) (*taxonomy.Taxonomy, error) {
	req := &service.GetAllFabricTaxonomyRequest{}

	apictx := metadata.AppendToOutgoingContext(ctx, "x-api-key", c.apiKey)

	var callopts []grpc.CallOption

	resp, rerr := c.client.GetAllFabricTaxonomy(apictx, req, callopts...)

	if rerr != nil {
		return nil, rerr
	}

	return resp.Taxonomy, nil
}

func (c *Client) GetCleaningCodes(ctx context.Context) (map[string]*cleaningcode.CleaningCode, error) {
	req := &service.GetCleaningCodesRequest{}

	apictx := metadata.AppendToOutgoingContext(ctx, "x-api-key", c.apiKey)

	var callopts []grpc.CallOption

	resp, rerr := c.client.GetCleaningCodes(apictx, req, callopts...)

	if rerr != nil {
		return nil, rerr
	}

	return resp.CleaningCodes, nil
}

func (c *Client) GetDiscontinuedFabrics(ctx context.Context) ([]*discontinuedfabric.DiscontinuedFabric, error) {
	req := &service.GetDiscontinuedFabricsRequest{}

	apictx := metadata.AppendToOutgoingContext(ctx, "x-api-key", c.apiKey)

	var callopts []grpc.CallOption

	resp, rerr := c.client.GetDiscontinuedFabrics(apictx, req, callopts...)

	if rerr != nil {
		return nil, rerr
	}

	return resp.Fabrics, nil
}
