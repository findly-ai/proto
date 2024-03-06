#!/usr/bin/env bash

for proto_file in $PWD/defs/*.proto; do
    protoc -I=$PWD/defs/ --python_out=$PWD/python3.9/findly/proto --mypy_out=$PWD/python3.9/findly/proto $proto_file
done
