VERSION=$(shell descrive --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
IMAGE_NAME=fake-app
TARGET_OS=linux
TARGET_ARCH=amd64
APP_NAME=kbot

lint:
	golangci-lint run

test:
	go test

format: 
	gofmt -s -w .

build: format 
	CGO_ENABLED=0 GOOS=$(TARGET_OS) GOARCH=$(TARGET_ARCH) go build -v -o $(APP_NAME) -ldflags "-X="github.com/ottomen/ottomenbot/cmd.appVersion=$(VERSION)

linux: build
	docker build -t $(IMAGE_NAME):$(VERSION) -f Dockerfile .

arm:
	docker build -t $(IMAGE_NAME):$(VERSION) -f Dockerfile .

macOS:
	docker build -t $(IMAGE_NAME):$(VERSION) -f Dockerfile .

windows:
	docker build -t $(IMAGE_NAME):$(VERSION) -f Dockerfile .

clean:
	rm -rf $(APP_NAME)
	docker rmi -f $(IMAGE_NAME):$(VERSION) 