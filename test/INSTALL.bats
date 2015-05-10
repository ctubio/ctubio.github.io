#!/usr/bin/env bats

@test "INSTALL --no test" {
  run make --no-print-directory install-no
  [ "${lines[0]}" = "Yikes!" ]
  [ "${lines[1]}" = "Let's install some initial files for your new project." ]
  [ "${lines[5]}" = "anyway.. all done.. Thank you!" ]
  [ "$status" = 0 ]
}

@test "INSTALL --yes test" {
  run make --no-print-directory install-yes
  [ "${lines[0]}" = "Yikes!" ]
  [ "${lines[1]}" = "Let's install some initial files for your new project." ]
  [ "${lines[5]}" = "Downloading your new project files, please wait.." ]
  [ "$status" = 0 ]
}

@test "INSTALL --help test" {
  run INSTALL --help
  [ "${lines[0]}" = "Yikes!" ]
  [ "${lines[1]}" = "Usage: INSTALL [option]" ]
  [ "${lines[2]}" = "Options:" ]
  [ "$status" = 0 ]
}

@test "INSTALL -x test" {
  [ "${lines[0]}" = "Yikes!" ]
  [ "${lines[1]}" = "Error: invalid option: -x" ]
  [ "${lines[2]}" = "Usage: INSTALL [option]" ]
  [ "${lines[3]}" = "Options:" ]
  [ "$status" = 1 ]
}
