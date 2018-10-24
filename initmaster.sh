#!/bin/bash

BASE_PATH=$(cd "$(dirname "$0")"; pwd)
DATA_DIR="${BASE_PATH}/pgmaster/data"
rm -rf "${DATA_DIR}/*"
initdb -D "${DATA_DIR}" a -E utf8 --locale en_US.UTF-8
cp ${BASE_PATH}/pgmaster/*.conf ${DATA_DIR}/