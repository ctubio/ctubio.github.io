#!/usr/bin/env bats

@test "INSTALL --no test" {
  run make install-no
  [ "${lines[0]}" = "Yikes!" ]
  [ "${lines[1]}" = " Let's install some initial files for your new project." ]
  [ "${lines[5]}" = "anyway.. all done.. Thank you!" ]
  [ "$status" = 0 ]
}

@test "INSTALL --yes test" {
  run make install-yes
  [ "${lines[0]}" = "Yikes!" ]
  [ "${lines[1]}" = " Let's install some initial files for your new project." ]
  [ "${lines[5]}" = "!Downloading your new project files, please wait.." ]
  [ "$status" = 0 ]
}
