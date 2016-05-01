#!/usr/bin/env bash

function _.find () {

  local i=0

  while read it; do 

    eval "$@"

    if [[ $? = 0 ]]; then
      echo "$it"
      return 0
    fi

    i=$(( i + 1 ))

  done

  return $i
}

