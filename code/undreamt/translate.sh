#!/bin/bash

python translate.py model/arm32_to_x86.it400.src2trg.pth \
--input data/arm32_corpus/arm32 --output output.txt