#!/usr/bin/env bash
set -x # echo on
# not using set -e etc because i dont want it to exits
mkdir -p $HOME/.local/bin
# ~/.zshrc
echo 'alias conda=micromamba' >> ~/.zshrc
echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.zshrc
echo 'export SHELL=`which zsh`' >> ~/.zshrc
source ~/.zshrc
ln -s $PWD/test/bats/bin/bats $HOME/.local/bin/bats # check
# might need to init submodules / trust the git repos before this will work
# check conda / poetry
poetry install

function others {
  conda install -y conda-forge::nodejs # or i can do it within the features as well
  corepack enable
  
  pnpm --version
  pnpm setup
  source ~/.zshrc
  pnpm i
  
}