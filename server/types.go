package main

import (
	"github.com/Vitality-South/magfabrics-api/service"
)

type server struct {
	service.UnimplementedMagnoliaFabricsServiceServer
	log       Logger
	dataStore DataStore
}

// Logger interface provides logging functionality.
// Will usually be provided by AWS CloudWatch or Kubernetes logging.
type Logger interface {
	Info(msg string)
	Debug(msg string)
	Error(msg string)
	Infof(format string, v ...any)
	Debugf(format string, v ...any)
	Errorf(format string, v ...any)
}

// DataStore interface for dynamodb handlers
type DataStore interface {
	IsNotFound(err error) bool
}
