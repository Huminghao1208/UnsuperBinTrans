#!/bin/bash

# Translate files in the "arm32_benign" folder
for file in data/Malware_detection/arm32_benign/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        python translate.py model/arm32_to_x86.it24000.src2trg.pth \
            --input "$file" \
            --output "data/Malware_detection/arm32_to_x86_benign/$filename"
    fi
done

Translate files in the "arm32_malware" folder
for file in data/Malware_detection/arm32_malware/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        python translate.py model/arm32_to_x86.it24000.src2trg.pth \
            --input "$file" \
            --output "data/Malware_detection/arm32_to_x86_malware/$filename"
    fi
done