#!/bin/bash
set -x
BASE_PATH=$(cd "$(dirname "$0")"; pwd)
DATA_DIR=${BASE_PATH}/pgslave1/data
rm -rf $DATA_DIR
mkdir -p $DATA_DIR
chmod 700 -R $DATA_DIR
pg_basebackup -h 127.0.0.1 -p 5524 -U qiye -D ${DATA_DIR}

echo -n "host    replication     qiye         0.0.0.0/0    md5" >> ${DATA_DIR}/pg_hba.conf

cat >${DATA_DIR}/recovery.conf <<-EOF
standby_mode = 'on'
primary_conninfo = 'host=127.0.0.1 port=5524 user=qiye password=123'
trigger_file= '${DATA_DIR}/trigger_file'
EOF
chmod 700 -R $DATA_DIR
