#!/usr/bin/env bats

@test "INSTALL dummy tests" {
  run ./INSTALL "test"
  [ "$output" = "testing outpu" ]
  [ "$status" -eq 0 ]
}


@test "INSTALL dummy tests2" {
  run ./INSTALL "test2"
  [ "$output" = "testing output" ]
  [ "$status" -eq 1 ]
}
