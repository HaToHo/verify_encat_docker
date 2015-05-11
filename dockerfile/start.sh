#!/bin/bash

ALL_FILES=$(ls -1 /opt/encat/etc)

for file in ${ALL_FILES}
do
    ln -s /opt/encat/etc/${file} /opt/encat/src/verify_encat/${file}
done

cd /opt/encat/src/verify_encat

if [ ${UPDATE_METADATA} ]; then
    ./update_metadata.sh
fi

if [ ${BUILD_CONF} ]; then
    python build_conf.py
fi

if [ ${BUILD_METADATA} ]; then
    python build_metadata.py
fi

./start.sh

