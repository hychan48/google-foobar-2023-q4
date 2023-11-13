#!/usr/bin/env bash
#poetry shell
# https://docs.jupyter.org/en/latest/running.html
# https://docs.jupyter.org/en/latest/glossary.html#term-command-line
# juypter notebook without token is --NotebookApp.token=''
# http://localhost:8888/notebooks/dev-notes/jupyterhub-scratch.ipynb
poetry run jupyter notebook
exit 0
poetry run jupyter notebook --NotebookApp.token=''

poetry run jupyter notebook --NotebookApp.token='' --NotebookApp.password=''
# generate config
poetry run jupyter notebook --generate-config

# user config - oh they changed the config 
code "$HOME/.jupyter/jupyter_notebook_config.py"

# todo moveme
#https://github.com/conda-forge/miniforge
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh -b # -b is batch mode

~/miniforge3/bin/conda init zsh # interactive zsh
conda config --set auto_activate_base false

#conda create --name or --prefix


# also there's a pipeline version
# probably should ln current projects to ~/projects
# check

# https://github.com/conda-forge/miniforge#downloading-the-installer-as-part-of-a-ci-pipeline
