#!/bin/bash

THIS_DIR=$(readlink -f $(dirname $0))
CMDLINE=$($THIS_DIR/../cmdline.sh $THIS_DIR)

$THIS_DIR/../../scripts/tests/test_app.py -e "$CMDLINE" --line 'Go version:' -i ~/.capstan/repository/test-golang-example/test-golang-example.qemu
