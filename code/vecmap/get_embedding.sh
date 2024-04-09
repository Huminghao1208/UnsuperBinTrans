#!/bin/bash

SRC_DIR=source
TGT_DIR=target

python3 map_embeddings.py --unsupervised $SRC_DIR/arm32-vector.bin $SRC_DIR/x86-vector.bin $TGT_DIR/arm32.emb $TGT_DIR/x86.emb
