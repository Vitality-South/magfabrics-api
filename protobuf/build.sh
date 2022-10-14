#!/usr/bin/env bash

mkdir -p  ../pkg/taxonomy ../pkg/fabric ../pkg/inventory ../pkg/cleaningcode ../ts ../js ../js/doc ../npm-lib/api

protoc -I. --go_out=../pkg/taxonomy --go_opt=paths=source_relative \
	--js_out=import_style=commonjs:../js \
	--ts_out ../ts \
	--ts_opt eslint_disable \
	--ts_opt add_pb_suffix \
	--ts_opt long_type_number \
	api_taxonomy.proto
protoc-go-inject-tag -input=../pkg/taxonomy/api_taxonomy.pb.go

protoc -I. --go_out=../pkg/cleaningcode --go_opt=paths=source_relative \
	--js_out=import_style=commonjs:../js \
	--ts_out ../ts \
	--ts_opt eslint_disable \
	--ts_opt add_pb_suffix \
	--ts_opt long_type_number \
	cleaning_code.proto
protoc-go-inject-tag -input=../pkg/cleaningcode/cleaning_code.pb.go

protoc -I. --go_out=../pkg/inventory --go_opt=paths=source_relative \
	--js_out=import_style=commonjs:../js \
	--ts_out ../ts \
	--ts_opt eslint_disable \
	--ts_opt add_pb_suffix \
	--ts_opt long_type_number \
	api_inventory.proto
protoc-go-inject-tag -input=../pkg/inventory/api_inventory.pb.go

protoc -I. --go_out=../pkg/fabric --go_opt=paths=source_relative \
	--js_out=import_style=commonjs:../js \
	--ts_out ../ts \
	--ts_opt eslint_disable \
	--ts_opt add_pb_suffix \
	--ts_opt long_type_number \
	api_fabric.proto
protoc-go-inject-tag -input=../pkg/fabric/api_fabric.pb.go

# currently unable to generate the client files as .ts?
# that feature is experimental in grpcweb
protoc -I. --go_out=../service --go_opt=paths=source_relative \
	--go-grpc_out=../service --go-grpc_opt=paths=source_relative \
	--js_out=import_style=commonjs:../js \
	--js_out=import_style=commonjs:../ts \
	--ts_out ../ts \
	--ts_opt eslint_disable \
	--ts_opt add_pb_suffix \
	--ts_opt long_type_number \
	--grpc-web_out=import_style=commonjs+dts,mode=grpcwebtext:../js \
	--grpc-web_out=import_style=typescript,mode=grpcwebtext:../ts \
	magnolia_service.proto

jsdoc -d=../js/doc ../js/*.js > /dev/null

# just copy the output into the example projects
cp ../js ../SPA-Example/src/api -r
cp ../js ../npm-lib/api -r