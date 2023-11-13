# Setup - Assuming conda/mamba is installed
# basic environment

conda create --prefix ./venv python=3.11 pipx poetry -y
conda activate ./venv

poetry config virtualenvs.create false
poetry config virtualenvs.in-project true # here as a reminder
poetry install
# poetry config virtualenvs.path .venv # here as a reminder

# conda create -f scripts/builds/environment.yml
exit 0

poetry shell
python3 -V