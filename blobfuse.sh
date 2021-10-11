#!/bin/bash

blobfuse /mnt/adls --tmp-path=/mnt/blobfusetmp --config-file=/tmp/blobfusecfg/fuse_connection.cfg --basic-remount-check=true --use-adls=true