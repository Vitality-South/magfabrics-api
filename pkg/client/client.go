package client

import (
	"context"
	"crypto/tls"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
	"google.golang.org/grpc/metadata"

	"github.com/Vitality-South/magnolia-fabrics-api/pkg/fabric"
	"github.com/Vitality-South/magnolia-fabrics-api/service"
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

	client := service.MagnoliaFabricsServiceClient(conn)

	c := Client{
		conn:   conn,
		client: client,
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
