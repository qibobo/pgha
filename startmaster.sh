#!/bin/bash

# postgres -D ../pgmaster
BASE_PATH=$(cd "$(dirname "$0")"; pwd)
DATA_DIR="${BASE_PATH}/data"
LOG_DIR="${BASE_PATH}/log"
LISTEN_HOST="127.0.0.1"
PORT="5524"
pg_ctl -o "-h ${LISTEN_HOST} -p ${PORT}" -w start -D "${DATA_DIR}" -l "${LOG_DIR}/startup.log"
