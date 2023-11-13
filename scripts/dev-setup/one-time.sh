# Setup
# basic environment
# conda create -f scripts/builds/environment.yml

conda create --prefix ./venv python=3.11 pipx poetry -y
conda activate ./venv

poetry config virtualenvs.create false
poetry config virtualenvs.in-project true # here as a reminder
# poetry config virtualenvs.path .venv # here as a reminder
