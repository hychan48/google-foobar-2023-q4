#!/usr/bin/env bash
set -x # echo on
# not using set -e etc because i dont want it to exits
mkdir -p $HOME/.local/bin
# ~/.zshrc
echo 'alias conda=micromamba' >> ~/.zshrc
echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.zshrc
ln -s $PWD/test/bats/bin/bats $HOME/.local/bin/bats # check
# might need to init submodules / trust the git repos before this will work
# check conda / poetry
poetry install
