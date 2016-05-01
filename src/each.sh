#!/usr/bin/env bash

function _.each () {

  while read it; do

    "$@" "$it"

    declare -i ret=$?

    if [[ $ret -ne 0 ]]; then
      return $ret
    fi

  done
}
