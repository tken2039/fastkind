#!/bin/bash

APP_NAME=$1
CLUSTER_NAME=$2
KIND_CONFIG=$3

set -e

[ -d /tmp/$APP_NAME ] && rm -rf /tmp/$APP_NAME
mkdir -p /tmp/$APP_NAME

kind create cluster --config $KIND_CONFIG --name $CLUSTER_NAME
