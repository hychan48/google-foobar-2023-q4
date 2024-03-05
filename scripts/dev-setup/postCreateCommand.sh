#!/usr/bin/env bash
set -x # echo on
# not using set -e etc because i dont want it to exits
mkdir -p $HOME/.local/bin
# ~/.zshrc
echo 'alias conda=micromamba' >> ~/.zshrc
echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.zshrc
# check conda / poetry
poetry install
