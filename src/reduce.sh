#!/usr/bin/env bash


function _.reduce () {

  local expr=$1
  local memo=$2

  while read it; do
    memo=$(
      eval "echo $expr"
    )
  done

  echo "$memo"
}
