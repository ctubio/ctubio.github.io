#!/usr/bin/env bats

@test "INSTALL dummy tests" {
  run INSTALL "test"
  [ "$output" = "testing output" ]
  [ "$status" -eq 0 ]
}
