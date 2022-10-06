// Copyright (c) 2022 Vitality South, LLC <chris@vitalitysouth.com>
// All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package storage

import (
	"context"
	"os"

	"github.com/aws/aws-sdk-go/aws"
	"github.com/aws/aws-sdk-go/aws/awserr"
	"github.com/aws/aws-sdk-go/aws/session"
	"github.com/aws/aws-sdk-go/service/s3"
	"github.com/aws/aws-sdk-go/service/s3/s3manager"
)

type S3Object struct {
	Bucket       string
	Key          string
	Data         []byte
	CacheControl string
	ContentType  string
}

func isNotFound(err error) bool {
	if err == nil {
		return false
	}

	if aerr, ok := err.(awserr.Error); ok {
		switch aerr.Code() {
		case s3.ErrCodeNoSuchKey:
			return true
		}
	}

	return false
}

// GetS3Object returns an object from S3.
func GetS3Object(ctx context.Context, bucket string, key string) (S3Object, error) {
	sess, sesserr := session.NewSession(&aws.Config{
		Region: aws.String(os.Getenv("AWS_REGION")),
	})

	if sesserr != nil {
		return S3Object{}, sesserr
	}

	downloader := s3manager.NewDownloader(sess)
	buf := aws.NewWriteAtBuffer([]byte{})

	_, derr := downloader.DownloadWithContext(ctx, buf,
		&s3.GetObjectInput{
			Bucket: aws.String(bucket),
			Key:    aws.String(key),
		})

	if isNotFound(derr) {
		return S3Object{}, NotFound
	}

	if derr != nil {
		return S3Object{}, derr
	}

	object := S3Object{
		Bucket: bucket,
		Key:    key,
		Data:   buf.Bytes(),
	}

	return object, nil
}
