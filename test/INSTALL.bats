#!/usr/bin/env bats

@test "INSTALL --no test" {
  run ./INSTALL --no
  [ "${lines[0]}" = "Yikes!" ]
  [ "${lines[5]}" = "anyway.. all done.. Thank you!" ]
  [ "$status" = 0 ]
}

@test "INSTALL --yes test" {
  run ./INSTALL --yes
  [ "${lines[0]}" = "Yikes!" ]
  [ "${lines[5]}" = "Downloading your new project files, please wait.." ]
  [ "$status" = 0 ]
}