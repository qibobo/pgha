#!/bin/bash
BASE_PATH=$(cd "$(dirname "$0")"; pwd)
DATA_DIR="${BASE_PATH}/pgmaster/data"
pg_ctl stop -D "${DATA_DIR}"
