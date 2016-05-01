#!/usr/bin/env bash

#
# Returns the milliseconds elapsed since 1 January 1970 00:00:00 UTC.
#
function _.now () {
  date +%s%3N
}
