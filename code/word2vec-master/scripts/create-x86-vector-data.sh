#!/bin/bash

DATA_DIR=../data
BIN_DIR=../bin
SRC_DIR=../src

TEXT_DATA=$DATA_DIR/train.x86
VECTOR_DATA=$DATA_DIR/x86-vector.bin

if [ ! -e $VECTOR_DATA ]; then
  if [ ! -e $TEXT_DATA ]; then
		echo No data is found!
	fi
  echo -----------------------------------------------------------------------------------------------------
  echo -- Training vectors...
  time $BIN_DIR/word2vec -train $TEXT_DATA -output $VECTOR_DATA -cbow 1 -size 100 -window 8 -negative 25 -hs 0 -sample 1e-4 -threads 30 -binary 0 -iter 15
fi
