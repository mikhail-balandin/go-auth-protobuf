.PHONY: gen

gen:
	@protoc -I auth auth/auth.proto 
		--go_out=./gen/go 
		--go_opt=paths=source_relative 
		--go-grpc_out=./gen/go 
		--go-grpc_opt=paths=source_relative