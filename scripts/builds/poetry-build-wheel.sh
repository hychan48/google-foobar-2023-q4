#!/usr/bin/env bash
# for production
# poetry on my dev is from pipx
set -euxo pipefail
poetry build

exit 0

# ci/cd then use github actions to build and publish the wheel
hychan48-google-foobar-2023-q4
# should be straight forward
# potentially try py 2.7... but im not a big fan of deprecated versions

# launches new shell

poetry shell
# can also source

# {cache-dir}/virtualenvs
# {project-dir}/.venv
# poetry install --no-root # not editable
# prod values should be no-setuptools and no-pip
# https://python-poetry.org/docs/configuration/#virtualenvscreate
# check conda's virtualenvs settigns
# git dependency
# https://python-poetry.org/docs/dependency-specification/
# i only want the wheel when i tag. python-tag is only py2 and py3 atm
# The wheel filename is {distribution}-{version}(-{build tag})?-{python tag}-{abi tag}-{platform tag}.whl.
# google_foobar_2023_q4-0.2.0-py3-none-any.whl


