#!/usr/bin/env bash
# Setup
# conda / mamba / pipx / poetry
# ensure git for bats

# conda env create -f environment.yml
# envs is default name for conda envs with prefix
# conda create --prefix ./venv python=3.11 pipx poetry -y
# rename venv
# conda rename --prefix ./venv ./envs
# mv ./venv envs
conda create --prefix ./envs python=3.11 pipx poetry -y
exit 0

# dump
conda env export --prefix ./venv > scripts/builds/environment.yml
conda config --set env_prompt '({name})'
conda deactivate
conda activate ./venv
conda activate .
conda env list

conda activate /root/PycharmProjects/google-foobar-2023-q4/venv
conda env remove --prefix ./venv -y


conda create --name newenv --clone oldenv
conda remove --name oldenv --all
conda remove --prefix ./envs
rm -rf ./envs

conda activate /root/PycharmProjects/google-foobar-2023-q4/venv
conda activate ./venv
conda deactivate

conda info