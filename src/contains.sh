#!/usr/bin/env bash

function _.contains () {

  local i=0

  while read it; do

    if [[ "$it" = *"$1"* ]]; then
      return 0
    fi

    i=$(( i + 1 ))

  done

  return 1
}
