.PHONY: clean test build build-container upload-container deploy

app := magnoliafabrics
version = 11
TARGETPLATFORM := linux/arm64/v8
GOARCH := arm64
GOOS := linux

clean:
	@rm -rf appserver grpc-server

test:
	@echo "Running go test -v..."
	go test -v

build: test
	GOOS=$(GOOS) GOARCH=$(GOARCH) go build -ldflags="-s -w" -o appserver

build-container: test build
	@echo "Building container image..."
	docker build --platform $(TARGETPLATFORM) --pull --no-cache -t "fenrir:$(app)-service-$(version)" .
	docker tag fenrir:$(app)-service-$(version) 608943053856.dkr.ecr.us-east-1.amazonaws.com/fenrir:$(app)-service-$(version)

upload-container: test build build-container
	@echo "Uploading container image to ECR..."
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 608943053856.dkr.ecr.us-east-1.amazonaws.com
	docker push 608943053856.dkr.ecr.us-east-1.amazonaws.com/fenrir:$(app)-service-$(version)
	#docker image rm 608943053856.dkr.ecr.us-east-1.amazonaws.com/fenrir:$(app)-service-$(version)
	#docker image rm fenrir:$(app)-service-$(version)

deploy: clean test build build-container upload-container clean
	@echo "Deploying image to kubernetes..."
	@sed -i.bak 's/{{VERSION_NUMBER}}/$(version)/g' deployment.yml
	kubectl apply -f deployment.yml
	@mv deployment.yml.bak deployment.yml
