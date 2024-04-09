#!/bin/bash

DATA_DIR=../data
BIN_DIR=../bin
SRC_DIR=../src

# VECTOR_DATA_ARM32=$DATA_DIR/arm32-vector.bin

# pushd ${SRC_DIR} && make; popd
# sh ./create-arm32-vector-data.sh

# set -x
# $BIN_DIR/distance $VECTOR_DATA_ARM32

VECTOR_DATA_x86=$DATA_DIR/x86-vector.bin

pushd ${SRC_DIR} && make; popd
sh ./create-x86-vector-data.sh

set -x
$BIN_DIR/distance $VECTOR_DATA_x86
