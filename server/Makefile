.phony: test build

appname = magnoliafabrics
version = 6

test:
	@echo "Running go test -v..."
	go test -v

build: test
	@echo "Building executable..."
	@rm -rf appserver
	GOOS=linux GOARCH=arm64 go build -ldflags="-s -w" -o appserver

build-container: test build
	@echo "Building container image..."
	docker build -t "fenrir:$(appname)-service-$(version)" .
	docker tag fenrir:$(appname)-service-$(version) 608943053856.dkr.ecr.us-east-1.amazonaws.com/fenrir:$(appname)-service-$(version)
	@rm -rf appserver

upload-container: test build build-container
	@echo "Uploading container image to ECR..."
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 608943053856.dkr.ecr.us-east-1.amazonaws.com
	docker push 608943053856.dkr.ecr.us-east-1.amazonaws.com/fenrir:$(appname)-service-$(version)
	#docker image rm 608943053856.dkr.ecr.us-east-1.amazonaws.com/fenrir:$(appname)-service-$(version)
	#docker image rm fenrir:$(appname)-service-$(version)

deploy: test build build-container upload-container
	@echo "Deploying image to kubernetes..."
	@sed -i.bak 's/{{VERSION_NUMBER}}/$(version)/g' deployment.yml
	kubectl apply -f deployment.yml
	@mv deployment.yml.bak deployment.yml
