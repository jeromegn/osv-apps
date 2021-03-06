#!/bin/bash

THIS_DIR=$(readlink -f $(dirname $0))
CMDLINE=$($THIS_DIR/../cmdline.sh $THIS_DIR)

$THIS_DIR/../../scripts/tests/test_http_app_with_curl_and_ab.py \
  -e "$CMDLINE" \
  --guest_port 3000 \
  --host_port 3000 \
  --line 'Express started on port' \
  --http_line 'Hello World'
