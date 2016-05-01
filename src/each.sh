#!/usr/bin/env bash

function _.each () {

  local i=0

  while read it; do

    if [[ "$@" == *"$"* ]]; then
      eval "$@"
    else
      eval "$@" "$it"
    fi

    declare -i ret=$?

    if [[ $ret -ne 0 ]]; then
      return $ret
    fi

    i=$(( i + 1 ))

  done
}
