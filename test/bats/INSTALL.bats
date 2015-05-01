#!/usr/bin/env bats

@test "INSTALL dummy tests" {
  run echo "2"
  [ "$output" = "2" ]
  [ "$status" -eq 0 ]
}
