#!/usr/bin/env bash

if [[ $1 == '' ]]; then
    echo No Archive Name Given!
    exit 1
fi

rm submission.zip
make submission
mkdir ../$1
unzip -d ../$1 submission.zip
sed -i '' -e 's/Master/'${1}'/' ../$1/MyBot.py
mv ../$1/MyBot.py ../$1/$1.py
rm submission.zip

