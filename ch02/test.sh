#!/bin/bash

if [[ -f './ch02/hoge.txt' ]]; then
    echo "already exists."
    exit 1
else
    touch "./ch02/hoge.txt"
    echo "created!!!"

fi
