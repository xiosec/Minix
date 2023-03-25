#!/bin/sh

for d in ./kernel/*; do
    # Will print */ if no directories are available
    echo "$d" | grep .c
done