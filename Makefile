.PHONY: deploy

PWD = $(shell pwd)

deploy: clean format install build

clean:
	@go clean -i ./...
	
format:
	@go fmt ./...

build:
	@go build ./...

install: 
	@go get  -v ./...

codeanalysis:
	@go tool vet src/	