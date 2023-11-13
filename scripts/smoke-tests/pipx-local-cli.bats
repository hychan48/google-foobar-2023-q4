#!/usr/bin/env bats
# assumes conda env is activated
# Testing fire and poetry CLI
# https://bats-core.readthedocs.io/en/stable/tutorial.html#your-first-test
# install bats-core and bats-assert
# https://github.com/ztombol/bats-docs

# Runs before each @test
setup() {
    PROJECT_ROOT=`git rev-parse --show-toplevel`

    # todo parallelize
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
    # poetry install

    # conda activate $PROJECT_ROOT/venv

    # look into shared setup
}
# each test
# teardown() {
  # deactivate
# }

# todo add git hooks
# get current git branch name

build-py-wheel(){
# move to scripts/builds/
# https://stackoverflow.com/questions/45136407/how-to-create-a-python-wheel-file-from-a-python-project
  poetry install
  poetry build
}

@test "poetry-build-wheel" {
  run "$PROJECT_ROOT/scripts/builds/poetry-build-wheel.sh"
  assert_success
  # maybe assert the file is in dist/google_foorbar
}

docker_debug(){
  
  # bash version - python311
  docker run -it --rm --hostname py311 --name py311 -v "$PWD":/usr/src/myapp -w /usr/src/myapp --entrypoint /bin/bash python:3.11-slim-bookworm
  # python3 -m pip install pipx --user
  python3 -m pip install pipx
  # install wheel
  pipx ensurepath
  pipx completions
  eval "$(register-python-argcomplete pipx)"
  source ~/.bashrc
  
  # perfect... simple whl working
  # get latest whl
  ls --sort=time dist/google_foobar_2023_*-py3-none-any.whl | head -n 1 # too confirm and check
  pipx install dist/google_foobar_2023_q4-0.2.1-py3-none-any.whl
  
  pipx install git+https://github.com/hychan48/google-foobar-2023-q4.git@branch
  

  # doesnt work in the docker container
  pipx install git+https://github.com/hychan48/google-foobar-2023-q4.git@`git branch --show-current`
  pip install git+https://github.com/hychan48/google-foobar-2023-q4.git@

  hychan48-cake-is-not-a-lie asdasd
  hychan48-dont-get-volunteered 0 1
  which hychan48-cake-is-not-a-lie # maybe check install path later

# git branch --show-current
# pipx run --spec 


  docker pull debian:bookworm
  docker pull jchan48h/deb-network:latest
  
  docker run -it --rm --hostname deb-bookworm --name deb-bookworm -v "$PWD":/usr/src/myapp -w /usr/src/myapp debian:bookworm bash





  # right it's mounted so easy peasy - bats needs to be linked though
  docker run -it --rm --hostname deb-N --name deb-bookworm -v "$PWD":/usr/src/myapp -w /usr/src/myapp jchan48h/deb-network:latest zsh


}
build_basic_docker(){
  # https://docs.docker.com/engine/install/debian/
  # https://hub.docker.com/_/python
  # kvm-ok
  docker pull python:3.11-slim-bookworm
  # -w is working directory
  docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp --entrypoint /bin/bash python:3.11-slim-bookworm


  # docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3.11-slim-bookworm python your-daemon-or-script.py
}
# docker_create(){
  
# }
