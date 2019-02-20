#!/bin/bash
version=$1
if [[ $version="" ]];then
    version="9.6.10-1"
fi
wget https://get.enterprisedb.com/postgresql/postgresql-${version}-linux-x64-binaries.tar.gz
tar -xvf postgresql-${version}-linux-x64-binaries.tar.gz
