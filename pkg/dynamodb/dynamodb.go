package dynamodb

import (
	"context"
	"errors"

	"github.com/aws/aws-sdk-go/aws"
	"github.com/aws/aws-sdk-go/aws/session"
	"github.com/guregu/dynamo"
)

const (
	// Atomic Incrementer Key.
	genericAtomicIncrementerKey = "AtomicIncrementer:Counter:Generic"
)

type DynamoDB struct {
	partitionKey string
	sortKey      string
	region       string
	tableName    string
	db           *dynamo.DB
	table        dynamo.Table
	sess         *session.Session
	log          logger
}

type logger interface {
	Info(string)
	Infof(string, ...interface{})
	Error(string)
	Debug(string)
	Debugf(string, ...interface{})
	Errorf(string, ...interface{})
	Print(v ...interface{})
}

func NewDynamoDB(region, tableName, partitionKey, sortKey string, l logger) (*DynamoDB, error) {
	sess, err := session.NewSession(&aws.Config{
		Region:                        aws.String(region),
		CredentialsChainVerboseErrors: aws.Bool(true),
	})

	if err != nil {
		return nil, err
	}

	db := dynamo.New(sess)

	d := DynamoDB{
		region:       region,
		tableName:    tableName,
		sess:         sess,
		db:           db,
		table:        db.Table(tableName),
		partitionKey: partitionKey,
		sortKey:      sortKey,
		log:          l,
	}

	return &d, nil
}

func (db *DynamoDB) AtomicIncrementCounter(ctx context.Context, key string) (int64, error) {
	type counter struct {
		Counter int64 `dynamo:"counter"`
	}

	var c counter

	err := db.table.Update(db.partitionKey, key).Range(db.sortKey, key).Add("counter", 1).OnlyUpdatedValueWithContext(ctx, &c)
	if err != nil {
		return 0, err
	}

	return c.Counter, nil
}

// IsNotFound checks if the error is a not found error.
func IsNotFound(err error) bool {
	var notFound *notFoundError
	return errors.As(err, &notFound)
}

// IsNotFound checks if the error is a not found error.
func (db *DynamoDB) IsNotFound(err error) bool {
	return IsNotFound(err)
}

// Define a custom error type for "not found" errors.
type notFoundError struct {
	message string
}

// Ensure it implements the error interface.
func (e *notFoundError) Error() string {
	return e.message
}

// newNotFoundError creates a new notFoundError.
func newNotFoundError(message string) error {
	return &notFoundError{message: message}
}

// Helper function to chunk a slice
func chunkSlice[T any](items []T, chunkSize int) [][]T {
	var chunks [][]T

	for i := 0; i < len(items); i += chunkSize {
		end := i + chunkSize
		end = min(end, len(items))
		chunks = append(chunks, items[i:end])
	}

	return chunks
}
