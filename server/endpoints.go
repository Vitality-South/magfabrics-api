// Copyright (c) 2022 Vitality South, LLC <chris@vitalitysouth.com>
// All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"

	"github.com/Vitality-South/magfabrics-api/pkg/storage"
	"github.com/Vitality-South/magfabrics-api/service"
)

const (
	APIKEY = `x-api-key`
)

// GetAllFabrics
func (s *server) GetAllFabrics(ctx context.Context, request *service.GetAllFabricsRequest) (*service.GetAllFabricsResponse, error) {
	md, _ := metadata.FromIncomingContext(ctx)

	if !isAuthenticated(md.Get(APIKEY)) {
		return nil, status.Error(codes.Unauthenticated, "invalid api key")
	}

	l, lerr := storage.GetAllFabricsWithInventory(ctx)

	if lerr == storage.NotFound {
		return nil, status.Error(codes.NotFound, lerr.Error())
	}

	if lerr != nil {
		return nil, status.Error(codes.Unavailable, lerr.Error())
	}

	return &service.GetAllFabricsResponse{
		Fabrics: l,
	}, nil
}

// GetAllFabricsWithoutInventory
func (s *server) GetAllFabricsWithoutInventory(ctx context.Context, request *service.GetAllFabricsWithoutInventoryRequest) (*service.GetAllFabricsWithoutInventoryResponse, error) {
	md, _ := metadata.FromIncomingContext(ctx)

	if !isAuthenticated(md.Get(APIKEY)) {
		return nil, status.Error(codes.Unauthenticated, "invalid api key")
	}

	l, lerr := storage.GetAllFabricsWithoutInventory(ctx)

	if lerr == storage.NotFound {
		return nil, status.Error(codes.NotFound, lerr.Error())
	}

	if lerr != nil {
		return nil, status.Error(codes.Unavailable, lerr.Error())
	}

	return &service.GetAllFabricsWithoutInventoryResponse{
		Fabrics: l,
	}, nil
}

// GetAllInventory
func (s *server) GetAllInventory(ctx context.Context, request *service.GetAllInventoryRequest) (*service.GetAllInventoryResponse, error) {
	md, _ := metadata.FromIncomingContext(ctx)

	if !isAuthenticated(md.Get(APIKEY)) {
		return nil, status.Error(codes.Unauthenticated, "invalid api key")
	}

	l, lerr := storage.GetAllFabricsInventory(ctx)

	if lerr == storage.NotFound {
		return nil, status.Error(codes.NotFound, lerr.Error())
	}

	if lerr != nil {
		return nil, status.Error(codes.Unavailable, lerr.Error())
	}

	return &service.GetAllInventoryResponse{
		Inventory: l,
	}, nil
}

// GetFabricByID
func (s *server) GetFabricByID(ctx context.Context, request *service.GetFabricByIDRequest) (*service.GetFabricByIDResponse, error) {
	md, _ := metadata.FromIncomingContext(ctx)

	if !isAuthenticated(md.Get(APIKEY)) {
		return nil, status.Error(codes.Unauthenticated, "invalid api key")
	}

	l, lerr := storage.GetFabricByID(ctx, request.FabricId)

	if lerr == storage.NotFound {
		return nil, status.Error(codes.NotFound, lerr.Error())
	}

	if lerr != nil {
		return nil, status.Error(codes.Unavailable, lerr.Error())
	}

	return &service.GetFabricByIDResponse{
		Fabric: l,
	}, nil
}

// GetFabricByName
func (s *server) GetFabricByName(ctx context.Context, request *service.GetFabricByNameRequest) (*service.GetFabricByNameResponse, error) {
	md, _ := metadata.FromIncomingContext(ctx)

	if !isAuthenticated(md.Get(APIKEY)) {
		return nil, status.Error(codes.Unauthenticated, "invalid api key")
	}

	l, lerr := storage.GetFabricByName(ctx, request.FabricName)

	if lerr == storage.NotFound {
		return nil, status.Error(codes.NotFound, lerr.Error())
	}

	if lerr != nil {
		return nil, status.Error(codes.Unavailable, lerr.Error())
	}

	return &service.GetFabricByNameResponse{
		Fabric: l,
	}, nil
}

// GetAllFabricTaxonomy
func (s *server) GetAllFabricTaxonomy(ctx context.Context, request *service.GetAllFabricTaxonomyRequest) (*service.GetAllFabricTaxonomyResponse, error) {
	md, _ := metadata.FromIncomingContext(ctx)

	if !isAuthenticated(md.Get(APIKEY)) {
		return nil, status.Error(codes.Unauthenticated, "invalid api key")
	}

	l, lerr := storage.GetTaxonomy(ctx)

	if lerr == storage.NotFound {
		return nil, status.Error(codes.NotFound, lerr.Error())
	}

	if lerr != nil {
		return nil, status.Error(codes.Unavailable, lerr.Error())
	}

	return &service.GetAllFabricTaxonomyResponse{
		Taxonomy: l,
	}, nil
}

// GetCleaningCodes
func (s *server) GetCleaningCodes(ctx context.Context, request *service.GetCleaningCodesRequest) (*service.GetCleaningCodesResponse, error) {
	md, _ := metadata.FromIncomingContext(ctx)

	if !isAuthenticated(md.Get(APIKEY)) {
		return nil, status.Error(codes.Unauthenticated, "invalid api key")
	}

	l, lerr := storage.GetCleaningCodes(ctx)

	if lerr == storage.NotFound {
		return nil, status.Error(codes.NotFound, lerr.Error())
	}

	if lerr != nil {
		return nil, status.Error(codes.Unavailable, lerr.Error())
	}

	return &service.GetCleaningCodesResponse{
		CleaningCodes: l,
	}, nil
}

// GetFabricBySKU
func (s *server) GetFabricBySKU(ctx context.Context, request *service.GetFabricBySKURequest) (*service.GetFabricBySKUResponse, error) {
	md, _ := metadata.FromIncomingContext(ctx)

	if !isAuthenticated(md.Get(APIKEY)) {
		return nil, status.Error(codes.Unauthenticated, "invalid api key")
	}

	l, lerr := storage.GetFabricBySKU(ctx, request.FabricSku)

	if lerr == storage.NotFound {
		return nil, status.Error(codes.NotFound, lerr.Error())
	}

	if lerr != nil {
		return nil, status.Error(codes.Unavailable, lerr.Error())
	}

	return &service.GetFabricBySKUResponse{
		Fabric: l,
	}, nil
}

// GetDiscontinuedFabrics
func (s *server) GetDiscontinuedFabrics(ctx context.Context, req *service.GetDiscontinuedFabricsRequest) (*service.GetDiscontinuedFabricsResponse, error) {
	md, _ := metadata.FromIncomingContext(ctx)

	if !isAuthenticated(md.Get(APIKEY)) {
		return nil, status.Error(codes.Unauthenticated, "invalid api key")
	}

	df, dferr := storage.GetDiscontinuedFabrics(ctx)

	if dferr != nil {
		return nil, status.Error(codes.Unavailable, dferr.Error())
	}

	return &service.GetDiscontinuedFabricsResponse{
		Fabrics: df,
	}, nil
}
