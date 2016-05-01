#!/usr/bin/env bash

function _.size () {

  local i=0

  while read; do
    i=$(( i + 1 ))
  done

  echo $i
}
