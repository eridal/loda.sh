#!/usr/bin/env bash

function _.map () {

  local i=0
  local out

  while read it; do

    if [[ "$@" == *"$"* ]]; then
      out=$("$@")
    else
      out=$("$@" "$it")
    fi

    declare -i ret=$?

    if [[ $ret -ne 0 ]]; then
      return $ret
    fi

    echo "$out"
    i=$(( i + 1 ))
  done
}
