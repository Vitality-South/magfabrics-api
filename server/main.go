// Copyright (c) 2022 Vitality South, LLC <chris@vitalitysouth.com>
// All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"flag"
	"fmt"
	"net"
	"os"

	"google.golang.org/grpc"

	"github.com/Vitality-South/magfabrics-api/pkg/log"
	"github.com/Vitality-South/magfabrics-api/service"
)

const (
	DefaultGrpcMaxMsgSize = 4194304
	DefaultServerPort     = 27019
)

// printEnv prints some of the environment variables used by the service.
func printEnv(logger Logger, port int) {
	logger.Infof("Listening on port: %d", port)
	logger.Infof("AWS_REGION = '%s'", os.Getenv("AWS_REGION"))
	logger.Infof("DEBUG = '%s'", os.Getenv("DEBUG"))
	logger.Infof("GRPC_GO_LOG_VERBOSITY_LEVEL = '%s'", os.Getenv("GRPC_GO_LOG_VERBOSITY_LEVEL"))
	logger.Infof("GRPC_GO_LOG_SEVERITY_LEVEL = '%s'", os.Getenv("GRPC_GO_LOG_SEVERITY_LEVEL"))
	logger.Infof("GRPC_GO_REQUIRE_HANDSHAKE = '%s'", os.Getenv("GRPC_GO_REQUIRE_HANDSHAKE"))
}

func main() {
	port := flag.Int("port", DefaultServerPort, "port number for grpc server")

	flag.Parse()

	// set up logger
	logger := log.NewLogger(os.Stdout, os.Getenv("DEBUG") == "TRUE")

	// listening for new tcp connection on the desired port
	lis, err := net.Listen("tcp", fmt.Sprintf(":%d", *port))
	if err != nil {
		logger.Errorf("error listening on port %d: %v", *port, err)

		os.Exit(1)
	}

	// set up database store
	dynamoDb, err := dynamodb.NewDynamoDB(
		os.Getenv("AWS_REGION"),
		os.Getenv("DYNAMODB_TABLE_NAME"),
		os.Getenv("DYNAMODB_TABLE_PK"),
		os.Getenv("DYNAMODB_TABLE_SK"),
		logger)
	if err != nil {
		logger.Errorf("error setting up database: %v", err)

		os.Exit(1)
	}

	printEnv(*port)

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
