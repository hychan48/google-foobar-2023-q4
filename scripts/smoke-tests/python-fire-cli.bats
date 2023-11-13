#!/usr/bin/env bats
# assumes conda env is activated
# Testing fire and poetry CLI
# https://bats-core.readthedocs.io/en/stable/tutorial.html#your-first-test
# install bats-core and bats-assert
# https://github.com/ztombol/bats-docs

setup() {
    PROJECT_ROOT=`git rev-parse --show-toplevel`
    # conda activate $PROJECT_ROOT/venv
    # poetry shell
    load "$PROJECT_ROOT/test/test_helper/bats-assert/load"
    load "$PROJECT_ROOT/test/test_helper/bats-support/load"
    # load 'test/test_helper/bats-assert/load'
    # ... the remaining setup is unchanged

    # get the containing directory of this file
    # use $BATS_TEST_FILENAME instead of ${BASH_SOURCE[0]} or $0,
    # as those will point to the bats executable's location or the preprocessed file respectively
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    # make executables in src/ visible to PATH
    PATH="$DIR/../src:$PATH"
    poetry install

    # conda activate $PROJECT_ROOT/venv

    # look into shared setup
}
# teardown() {
  # deactivate
# }

conda_env_test(){
  # runs when im already activated
  conda info | grep "active env location" |grep "$PROJECT_ROOT"
}
@test "conda env" {
  # conda info
  run conda_env_test
  assert [ "$status" -eq 0 ]
  # conda info | grep "active env location" |grep "$PROJECT_ROOT"
  # only need to wrap if we're using assert
  # assert_output $PWD
  # conda info
}

# recommend install if not using npm,... interserting
# git submodule add https://github.com/ztombol/bats-support test/test_helper/bats-support
# git commit -m 'Add bats-support library'

# setup_file() {
#     # load 'test_helper/common-setup'
#     # _common_setup
#     # PORT=$(project.sh start-echo-server 2>&1 >/dev/null)
#     # export PORT
# }
# oh nice okay

: '
bats --filter "hi" scripts/smoke-tests/python-fire-cli.bats
cat scripts/smoke-tests/python-fire-cli.bats
bats 
alias run="/bin/bash -c" # wont work without quotes though
/bin/bash -c echo hi # wont work
/bin/bash -- echo hi # also wont work
unalias run
whence run
vscode plugin probably easiest for me
'
# Using fire
# Has to sync set -euxo pipefail
# set -euxo pipefail

fire_q1(){
  # python3 -m fire levels q1 "$1"
  # pytest levels/q1/test/test_solution.py
  # check top 
  python3 -m fire cli --help | head -n 100 | grep -qw "level 1"
  python3 -m fire cli cake --help | head -n 100 |grep -qw STR_INPUT
  python3 -m fire cli cake asdasd
  # which python3
  # python3 -m fire levels.q1.src.solution.solution asdasd
  # python3 -m fire levels.q1.src.solution --help
  # python3 -m fire levels cake --help | head -n 10
  # python3 -m fire levels cake asdasd
}
@test "fire_q1" { 
  run fire_q1
  assert_line 2
}
q1_poetry(){
  # python3 -m fire levels q1 "$1"
  poetry run hychan48-cake-is-not-a-lie --help | grep -wq STR_INPUT
  # poetry run hychan48-cake-is-not-a-lie asdasd
}
@test "q1_poetry" { 
  run q1_poetry
  run poetry run hychan48-cake-is-not-a-lie asdasd
  assert_output 2
  
}
debug_poetry(){
  #https://felix11h.github.io/notes/ops/poetry.html
  poetry env info
  poetry env use python
  poetry install
  poetry run hychan48-cake-is-not-a-lie
  poetry run hychan48-cake-is-not-a-lie --help | head -n 100
  python3 -m fire levels --help | head -n 100
  python3 -m fire levels main cake --help | head -n 10
  python3 -m fire levels cake --help | head -n 10
  python3 -m fire levels cake --help
  python3 -m fire levels q1s --help

}

# # commends do run... so
# @test "comments" {
#   skip "sup"
#   echo fail
#   # https://github.com/bats-core/bats-assert

# }

# @test "hi" { 
#   echo "hi" # this runs file? or cmd
#   # run echo "hi" # this runs file? or cmd
#   assert_output= "hi"
#   # [ "$status" -eq 0 ]

# }
# @test "server is reachable" {
#     nc -z localhost "$PORT"
# }


# exit 0
# they have a tutorial repo verty nice

# maybe it's poetry instead of bash / python3?


# exit 0
# python3 -m fire levels q1 "asdasd"
# # should equal 2
# # same as
# poetry install
# poetry run hychan48-cake-is-not-a-lie "asdasd"

# exit 0
# # https://github.com/bats-core/bats-core
# git clone https://github.com/bats-core/bats-core.git
# ( cd bats-core ; ./install.sh /usr/local )
# ls -l  /usr/local/bin/bats # installed
# ls -l  /usr/local/bin/
# # ( cd bats-core ; ./install.sh /usr/local/share )
# # ls /usr/local/share/bin

# # ls /usr/local/share
# # share is for architecture-independent data
# # /opt 

# # bad dir:?
# # rm -rf /usr/local/share/bin
# # cd /usr/local/share/bin
# # tree /usr/local/share/bin
