#!/usr/bin/env bash

function _.map () {

  local out

  while read it; do

    out=$("$@" "$it")

    declare -i ret=$?

    if [[ $ret -ne 0 ]]; then
      return $ret
    fi

    echo "$out"
  done
}
