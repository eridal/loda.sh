#!/usr/bin/env bash

function _.every () {

  local i=0

  while read it; do

    if [[ "$@" == *"$"* ]]; then
      eval "$@"
    else
      eval "$@" "$it"
    fi

    declare -i ret=$?

    if [[ $ret -ne 0 ]]; then
      return 1
    fi

    i=$(( i + 1 ))

  done
}

