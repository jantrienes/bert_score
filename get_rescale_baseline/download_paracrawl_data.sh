#!/bin/bash
lang=$1
mkdir -p data/paracrawl/
cd data/paracrawl/ || return
if ! [ -f rand_"$lang".txt ]; then
  wget https://s3.amazonaws.com/web-language-models/paracrawl/release9/en-"$lang"/en-"$lang".txt.gz
  gzip -d en-"$lang".txt.gz
  cut -f2 en-"$lang".txt | shuf > rand_"$lang".txt
  rm en-"$lang".txt
fi

echo "finish downloading data"
