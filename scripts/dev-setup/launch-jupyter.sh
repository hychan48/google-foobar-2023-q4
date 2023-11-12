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