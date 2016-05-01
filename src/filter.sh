#!/usr/bin/env bash

function _.filter () {

  local i=0

  while read it; do

    if [[ "$@" == *"$"* ]]; then
      eval "$@"
    else
      eval "$@" "$it"
    fi

    if [[ $? = 0 ]]; then
      echo "$it"
    fi

    i=$(( i + 1 ))

  done
}

