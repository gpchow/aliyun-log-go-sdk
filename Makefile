all: log.pb.go
	go build

pb: log.proto
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	protoc --go_out=. ./log.proto

test:
	go test
