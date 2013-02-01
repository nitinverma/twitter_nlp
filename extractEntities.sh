#!/bin/bash

curr_pwd=${PWD}
cd $(dirname $0)
script_pwd=${PWD}

cat /dev/stdin | perl -pe 's/[^[:ascii:]]//g' | python python/ner/extractEntities2_json.py $@

cd $curr_pwd

