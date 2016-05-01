#!/usr/bin/env bash

function _.find () {

  local i=0

  while read it; do 

    if [[ "$@" == *"$"* ]]; then
      eval "$@"
    else
      eval "$@" "$it"
    fi

    if [[ $? = 0 ]]; then
      echo "$it"
      return 0
    fi

    i=$(( i + 1 ))

  done

  return $i
}

