# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
GO111MODULE=on

all: test build

build:
	go mod vendor
	$(GOBUILD) ./

test:
	$(GOTEST) ./

clean:
	$(GOCLEAN)

fmt:
	$(GOCMD) fmt ./pkg/
	$(GOCMD) fmt ./main.go
