// Copyright (c) 2022 Vitality South, LLC <chris@vitalitysouth.com>
// All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package storage

import (
	"bytes"
	"context"
	"encoding/gob"
	"errors"
	"os"

	"github.com/aws/aws-sdk-go/aws"
	"github.com/aws/aws-sdk-go/aws/session"
	"github.com/guregu/dynamo"

	"vs.local/projects/magnolia-fabrics/api/pkg/fabric"
	"vs.local/projects/magnolia-fabrics/api/pkg/inventory"
	"vs.local/projects/magnolia-fabrics/api/pkg/taxonomy"
)

const (
	// dynamodb config.
	PK             = "PK"
	SK             = "SK"
	TaxonomyAllPK  = "Taxonomy"
	TaxonomyAllSK  = "All"
	FabricByNameSK = "FabricByName"

	// s3 config.
	CMSBucket       = "cms.magnoliaco.com"
	CMSFabricsKey   = "fabrics/all.gob"
	CMSInventoryKey = "inventory/all.gob"
)

var NotFound = errors.New("not found")

func database() (*dynamo.DB, dynamo.Table, error) {
	sess, sesserr := session.NewSession(&aws.Config{
		Region: aws.String(os.Getenv("AWS_REGION")),
	})

	if sesserr != nil {
		return nil, dynamo.Table{}, sesserr
	}

	db := dynamo.New(sess)

	return db, db.Table(os.Getenv("DYNAMO_TABLE")), nil
}

func GetTaxonomy(ctx context.Context) (*taxonomy.Taxonomy, error) {
	_, table, dberr := database()

	if dberr != nil {
		return nil, dberr
	}

	var t *taxonomy.Taxonomy

	gerr := table.Get(PK, TaxonomyAllPK).Range(SK, dynamo.Equal, TaxonomyAllSK).OneWithContext(ctx, &t)

	if gerr == dynamo.ErrNotFound {
		return t, NotFound
	}

	if gerr != nil {
		return t, gerr
	}

	return t, nil
}

func GetAllFabricsWithoutInventory(ctx context.Context) ([]*fabric.Fabric, error) {
	var all []*fabric.Fabric

	object, gerr := GetS3Object(ctx, CMSBucket, CMSFabricsKey)

	if gerr != nil {
		return []*fabric.Fabric{}, gerr
	}

	dec := gob.NewDecoder(bytes.NewReader(object.Data))

	if derr := dec.Decode(&all); derr != nil {
		return []*fabric.Fabric{}, derr
	}

	return all, nil
}

func GetAllFabricsInventory(ctx context.Context) ([]*inventory.Inventory, error) {
	var all []*inventory.Inventory

	object, gerr := GetS3Object(ctx, CMSBucket, CMSInventoryKey)

	if gerr != nil {
		return []*inventory.Inventory{}, gerr
	}

	dec := gob.NewDecoder(bytes.NewReader(object.Data))

	if derr := dec.Decode(&all); derr != nil {
		return []*inventory.Inventory{}, derr
	}

	return all, nil
}

func GetAllFabricsWithInventory(ctx context.Context) ([]*fabric.Fabric, error) {
	fab, ferr := GetAllFabricsWithoutInventory(ctx)

	if ferr != nil {
		return []*fabric.Fabric{}, ferr
	}

	inv, ierr := GetAllFabricsInventory(ctx)

	if ierr != nil {
		return []*fabric.Fabric{}, ierr
	}

	fabinv := make(map[string]*inventory.Inventory, 2500)

	for _, i := range inv {
		fabinv[i.ProductCode] = i
	}

	for _, f := range fab {
		if i, ok := fabinv[f.ProductCode]; ok {
			f.Inventory = i
		}
	}

	return fab, nil
}

func GetFabricByID(ctx context.Context, id string) (*fabric.Fabric, error) {
	_, table, dberr := database()

	if dberr != nil {
		return nil, dberr
	}

	var f *fabric.Fabric

	gerr := table.Get(PK, id).Range(SK, dynamo.Equal, "Fabric").OneWithContext(ctx, &f)

	if gerr == dynamo.ErrNotFound {
		return f, NotFound
	}

	if gerr != nil {
		return f, gerr
	}

	var i *inventory.Inventory

	ierr := table.Get(PK, id).Range(SK, dynamo.Equal, "Inventory").OneWithContext(ctx, &i)

	// inventory may not exist so just return an empty inventory in this case
	if ierr == dynamo.ErrNotFound {
		return f, nil
	}

	if ierr != nil {
		return f, ierr
	}

	f.Inventory = i

	return f, nil
}

func GetFabricByName(ctx context.Context, name string) (*fabric.Fabric, error) {
	_, table, dberr := database()

	if dberr != nil {
		return nil, dberr
	}

	var f *fabric.Fabric

	gerr := table.Get(PK, name).Range(SK, dynamo.Equal, FabricByNameSK).OneWithContext(ctx, &f)

	if gerr == dynamo.ErrNotFound {
		return f, NotFound
	}

	if gerr != nil {
		return f, gerr
	}

	var i *inventory.Inventory

	ierr := table.Get(PK, f.ProductCode).Range(SK, dynamo.Equal, "Inventory").OneWithContext(ctx, &i)

	// inventory may not exist so just return an empty inventory in this case
	if ierr == dynamo.ErrNotFound {
		return f, nil
	}

	if ierr != nil {
		return f, ierr
	}

	f.Inventory = i

	return f, nil
}
