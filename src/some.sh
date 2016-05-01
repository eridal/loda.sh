#!/usr/bin/env bash

function _.some () {

  local i=0

  while read it; do

    if [[ "$@" == *"$"* ]]; then
      eval "$@"
    else
      eval "$@" "$it"
    fi

    declare -i ret=$?

    if [[ $ret -eq 0 ]]; then
      return 0
    fi

    i=$(( i + 1 ))

  done

  return 1
}

