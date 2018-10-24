#!/bin/bash
set -x
BASE_PATH=$(cd "$(dirname "$0")"; pwd)
DATA_DIR="${BASE_PATH}/pgmaster/data"
rm -rf ${DATA_DIR}
mkdir -p ${DATA_DIR}
ls $DATA_DIR
initdb -U "qiye" --pwfile="${BASE_PATH}/pgmaster/pwfile" -D "${DATA_DIR}" -E utf8 --locale en_US.UTF-8
cp ${BASE_PATH}/pgmaster/*.conf ${DATA_DIR}/
