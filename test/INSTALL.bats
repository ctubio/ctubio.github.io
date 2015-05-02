#!/usr/bin/env bats

@test "INSTALL dummy tests" {
  run echo "1"
  [ "$output" = "1" ]
  [ "$status" -eq 0 ]
}
