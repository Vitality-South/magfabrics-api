#!/usr/bin/env bash

mkdir -p  ../pkg/taxonomy ../pkg/fabric ../pkg/inventory ../pkg/cleaningcode ../ts ../js ../js/doc

protoc -I. --go_out=../pkg/taxonomy --go_opt=paths=source_relative \
	--js_out=import_style=commonjs:../js \
	taxonomy.proto
protoc-go-inject-tag -input=../pkg/taxonomy/taxonomy.pb.go

protoc -I. --go_out=../pkg/cleaningcode --go_opt=paths=source_relative \
	--js_out=import_style=commonjs:../js \
	cleaning_code.proto
protoc-go-inject-tag -input=../pkg/cleaningcode/cleaning_code.pb.go

protoc -I. --go_out=../pkg/inventory --go_opt=paths=source_relative \
	--js_out=import_style=commonjs:../js \
	inventory.proto
protoc-go-inject-tag -input=../pkg/inventory/inventory.pb.go

protoc -I. --go_out=../pkg/fabric --go_opt=paths=source_relative \
	--js_out=import_style=commonjs:../js \
	api_fabric.proto
protoc-go-inject-tag -input=../pkg/fabric/fabric.pb.go

protoc -I. --go_out=../service --go_opt=paths=source_relative \
	--go-grpc_out=../service --go-grpc_opt=paths=source_relative \
	--js_out=import_style=commonjs:../js \
	--grpc-web_out=import_style=commonjs,mode=grpcwebtext:../js \
	magnolia_service.proto

jsdoc -d=../js/doc ../js/*.js > /dev/null

# just copy the output into the example projects
cp ../js ../SPA-Example/src/api -r