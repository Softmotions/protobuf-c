#!/bin/sh
set -e

PROTOBUF_PROTOC_EXEC=$(which protoc)
autark set "PROTOBUF_PROTOC_EXEC=${PROTOBUF_PROTOC_EXEC}"

