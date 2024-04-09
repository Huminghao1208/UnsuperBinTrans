#!/bin/bash

DATA_PATH=data
arm32_CORPUS_DIR=$DATA_PATH/arm32_corpus
x86_CORPUS_DIR=$DATA_PATH/x86_corpus

arm32_EMB_DIR=$DATA_PATH/arm32_emb
x86_EMB_DIR=$DATA_PATH/x86_emb

python train.py --src $arm32_CORPUS_DIR/arm32 --trg $x86_CORPUS_DIR/x86 --src_embeddings $arm32_EMB_DIR/arm32.emb --trg_embeddings $x86_EMB_DIR/x86.emb \
--save arm32_to_x86 --save_interval 3 --batch 128 --cuda
