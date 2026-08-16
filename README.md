## NOTE: Tested only with libprotoc v35+ earlier versions may not work.

## Overview

This is `protobuf-c`, a C implementation of the [Google Protocol Buffers](https://developers.google.com/protocol-buffers/) data serialization format. It includes `libprotobuf-c`, a pure C library that implements protobuf encoding and decoding, and `protoc-gen-c`, a code generator plugin for `protoc` that converts Protocol Buffer `.proto` files to C descriptor code. `protobuf-c` formerly included an RPC implementation; that code has been split out into the [protobuf-c-rpc](https://github.com/protobuf-c/protobuf-c-rpc) project.

## Building

```
./build.sh --prefix=<install prefix>
```

## Synopsis

Use the `protoc` command to generate `.pb-c.c` and `.pb-c.h` output files from your `.proto` input file. The `--c_out` options instructs `protoc` to use the protobuf-c plugin.

    protoc --c_out=. example.proto

Include the `.pb-c.h` file from your C source code.

    #include "example.pb-c.h"

Compile your C source code together with the `.pb-c.c` file. Add the output of the following command to your compile flags.

    pkg-config --cflags 'libprotobuf-c >= 1.0.0'

Link against the `libprotobuf-c` support library. Add the output of the following command to your link flags.

    pkg-config --libs 'libprotobuf-c >= 1.0.0'

