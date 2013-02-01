#!/bin/bash

curr_pwd=${PWD}
cd $(dirname $0)
script_pwd=${PWD}

export TWITTER_NLP=${script_pwd}

cat /dev/stdin | perl -pe 's/[^[:ascii:]]//g' | python python/ner/extractEntities2_json.py $@

cd $curr_pwd

