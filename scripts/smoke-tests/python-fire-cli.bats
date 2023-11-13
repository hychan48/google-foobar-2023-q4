#!/usr/bin/env bats
# Testing fire and poetry CLI
# https://bats-core.readthedocs.io/en/stable/tutorial.html#your-first-test
# install bats-core and bats-assert
# https://github.com/ztombol/bats-docs

setup() {
    PROJECT_ROOT=`git rev-parse --show-toplevel`
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

    # conda activate $PROJECT_ROOT/venv

    # look into shared setup
}
conda_env_test(){
  conda info | grep "active env location" |grep "$PROJECT_ROOT"
}
@test "conda env" {
  # conda info
  run conda_env_test
  assert [ "$status" -eq 0 ]
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
# Has to sync with levels/__init__.py
fire_q1(){
  # python3 -m fire levels q1 "$1"
  # source ./envs/bin/activate
  python3 -m fire levels q1 asddasd
}
@test "fire_q1" { 
  
  run python3 -m fire levels q1 "asdasd"
  assert_output 'foobar'
}

# commends do run... so
@test "comments" {
  skip "sup"
  echo fail
  # https://github.com/bats-core/bats-assert

}

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
