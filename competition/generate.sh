#!/bin/bash

for f in ./images/*; do basename "$f"; done \
  | jq -R '.' \
  | jq -s 'map(capture("^(?<filename>(?<caption>.+)#(?<author>.+)\\..+?)$"))' \
  > files.json
