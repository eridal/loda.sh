#!/usr/bin/env bash

function _.invoke () {

  declare -a args=()

  while read it; do
    args=("${args[@]}" "$it")
  done

  eval "$@" "${args[@]}"
}
