// Copyright (c) 2022 Vitality South, LLC <chris@vitalitysouth.com>
// All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"flag"
	"fmt"
	"log"
	"net"
	"os"

	"google.golang.org/grpc"

	"github.com/Vitality-South/magnolia-fabrics-api/service"
)

const (
	DefaultGrpcMaxMsgSize = 4194304
	DefaultServerPort     = 27019
)

type server struct {
	service.UnimplementedMagnoliaFabricsServiceServer
}

func initLog(port int) {
	log.Printf("Listening on port: %d", port)
	log.Printf("AWS_REGION = '%s'", os.Getenv("AWS_REGION"))
	log.Printf("DEBUG = '%s'", os.Getenv("DEBUG"))
	log.Printf("STACKTRACE = '%s'", os.Getenv("STACKTRACE"))
	log.Printf("GRPC_GO_LOG_VERBOSITY_LEVEL = '%s'", os.Getenv("GRPC_GO_LOG_VERBOSITY_LEVEL"))
	log.Printf("GRPC_GO_LOG_SEVERITY_LEVEL = '%s'", os.Getenv("GRPC_GO_LOG_SEVERITY_LEVEL"))
	log.Printf("GRPC_GO_REQUIRE_HANDSHAKE = '%s'", os.Getenv("GRPC_GO_REQUIRE_HANDSHAKE"))
}

func main() {
	port := flag.Int("port", DefaultServerPort, "port number for grpc server")

	flag.Parse()

	initLog(*port)

	lis, lerr := net.Listen("tcp", fmt.Sprintf(":%d", *port))

	if lerr != nil {
		log.Fatalf("error listening on port %d", *port)
	}

	opts := []grpc.ServerOption{}

	opts = append(opts, grpc.MaxRecvMsgSize(DefaultGrpcMaxMsgSize))

	grpcServer := grpc.NewServer(opts...)
	service.RegisterMagnoliaFabricsServiceServer(grpcServer, &server{})

	if serr := grpcServer.Serve(lis); serr != nil {
		log.Fatalf("failed to create grpc server: %+v", serr)
	}
}
