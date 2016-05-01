#!/usr/bin/env bash

function _.tap () {

  local i=0

  while read it; do

    if [[ "$@" == *"$"* ]]; then
      eval "$@" >& 2
    else
      eval "$@" "$it" >& 2
    fi

    echo "$it"

    i=$(( i + 1 ))
  done
}
