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

	"github.com/Vitality-South/magfabrics-api/service"
)

const (
	DefaultGrpcMaxMsgSize = 4194304
	DefaultServerPort     = 27019
)

// printEnv prints some of the environment variables used by the service.
func printEnv(port int) {
	log.Printf("Listening on port: %d", port)
	log.Printf("AWS_REGION = '%s'", os.Getenv("AWS_REGION"))
	log.Printf("DEBUG = '%s'", os.Getenv("DEBUG"))
	log.Printf("GRPC_GO_LOG_VERBOSITY_LEVEL = '%s'", os.Getenv("GRPC_GO_LOG_VERBOSITY_LEVEL"))
	log.Printf("GRPC_GO_LOG_SEVERITY_LEVEL = '%s'", os.Getenv("GRPC_GO_LOG_SEVERITY_LEVEL"))
	log.Printf("GRPC_GO_REQUIRE_HANDSHAKE = '%s'", os.Getenv("GRPC_GO_REQUIRE_HANDSHAKE"))
}

func main() {
	port := flag.Int("port", DefaultServerPort, "port number for grpc server")

	flag.Parse()

	// listening for new tcp connection on the desired port
	lis, err := net.Listen("tcp", fmt.Sprintf(":%d", *port))
	if err != nil {
		log.Printf("error listening on port %d: %v", *port, err)

		os.Exit(1)
	}

	printEnv(*port)

	opts := []grpc.ServerOption{}

	opts = append(opts, grpc.MaxRecvMsgSize(DefaultGrpcMaxMsgSize))

	grpcServer := grpc.NewServer(opts...)
	service.RegisterMagnoliaFabricsServiceServer(grpcServer, &server{})

	if serr := grpcServer.Serve(lis); serr != nil {
		log.Fatalf("failed to create grpc server: %+v", serr)
	}
}
