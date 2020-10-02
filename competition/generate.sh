#!/bin/bash

for f in ../assets/images/Street/*; do basename "$f"; done \
  | jq -R '.' \
  | jq -s 'map(capture("^(?<filename>(?<caption>.+)#(?<author>.+)\\..+?)$"))' \
  > files.json
