proto:
	make api && make empty

api:
	protoc --dart_out=grpc:lib/generated -I=./protos -I=./protos/protobuf -I . ./protos/*.proto
empty:
	protoc --dart_out=grpc:lib/generated/protobuf -I=./protos/protobuf -I . ./protos/protobuf/empty.proto
fm:
	protoc --dart_out=grpc:lib/generated/protobuf -I=./protos/protobuf -I . ./protos/protobuf/field_mask.proto
