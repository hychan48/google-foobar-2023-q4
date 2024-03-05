# @hychan48/google-foobar-2023-q4
## Production
<!-- todo
add some assets
# pip install google-foobar-2023-q4
hychan48-cake-is-not-a-lie --help
-->
<!-- todo add links for github, pypi, docker
Remove dev code from the main readme
Check with guidelines
asciinema / jyupter on repl.it?
-->
### Installation
```bash
# https://replit.com/@jasonchan51/hychan48-google-foobar-2023-q4
pipx install hychan48-google-foobar-2023-q4

hychan48-cake-is-not-a-lie --help
hychan48-cake-is-not-a-lie abab
hychan48-dont-get-volunteered 0 1
```
<!-- 
# pipx install git+https://github.com/hychan48/google-foobar-2023-q4.git
#pipx run --spec git+

# Returns 2

```
 -->

## Level 1
* [readme_q1_the-cake-isnot-a-lie.md](levels/q1/readme_q1_the-cake-isnot-a-lie.md)
```bash
hychan48-cake-is-not-a-lie abab

# GitHub action runs the PyTests:
pytest levels/q1/tests/solutions_test.py

# JavaScript solution - only for q1
pnpm run test:q1
```

## level 2 
### Question 1
* [readme_q2_dont-get-volunteered.md](levels/q2/readme_q2_dont-get-volunteered.md)
* Simplified Knight's Tour problem
  * Textbook BFS, but I wanted to animate it
  * [BFS Wiki](https://en.wikipedia.org/wiki/Breadth-first_search)
  * [Knight's Tour Game](https://www.maths-resources.com/knights/)
* Experimented with ILP. Good example to teach with
```bash
hychan48-dont-get-volunteered 0 1 # Returns 3
pytest ./levels/q2/tests/solutions_bfs_test.py
```

## Background
* https://github.com/hychan48/google-foobar-2023-q4
* I searched proxy vs load balancer. and at first I found it mad sketch
* had to verify it's SSL/TLS cert and Google was foobar was.

## Assumptions
* So far it looks like it's either Python 2.7 or Java 8
* I'm going to use Python 3.11.6, using basic syntax it should be backwards compatible with 2.7
  * Also, I have PyCharm installed already
* TDD with PyTest




# Quick Checklist
- [ ] Documentation
  - Save Original Question
    - [ ] /api/v1/files/ (.json)
    - [ ] convert to .yaml and .html
  - Reword Question and Keywords
    - [ ] readme_q.template.md
  - Principles
    - TDD / BDD
    - Quick and dirty
      - Unless the question piques my research interest
      - 7 days per question seems like a lot of time
  - Priorities
  - [ ] JSDoc @typedef but for Python 
  - [ ] Metadata
    - [ ] Author
    - [ ] GitHub Repo
    - [ ] Environment
    - Time / Space Complexity (if applicable)
- [ ] Validation / Error handling
- [ ] Test cases / Unit Tests
  - [ ] Workflow with GitHub actions
    - Lint - Flake8
    - Unit Tests - PyTest

## Quick Dev Setup
### Non-Dev Container
```bash
# install micromamba (aliased as conda) / miniforge3
conda env create -f environment.yml
conda deactivate
conda activate hychan48-google-foobar
# Using micromamba aliased as conda
poetry install
```
#### BATS-core
```bash
# add this to path:
command -v bats # Check if bats

mkdir -p $HOME/.local/bin
export PATH=$PATH:$HOME/.local/bin
ln -s $PWD/test/bats/bin/bats $HOME/.local/bin/bats # check
which -a bats # check again
whence bats
ls -l $HOME/.local/bin/bats
tree $HOME/.local/bin
pipx ensurepath # will add $HOME/.local/bin to path
```
### Dev Container
```bash
# smoke test
pytest levels/q1/tests/solutions_test.py # cake is not a lie
poetry --quiet run hychan48-cake-is-not-a-lie abab
# output: 2
```
### PyTest in Poetry
* BDD/TDD (Behavior Driven Development / Test Driven Development)
```bash
pytest levels/q1/tests/solutions_test.py
pytest levels/q2/tests/solutions_bfs_test.py
# or
poetry install && poetry --quiet run pytest-cake
poetry install && poetry --quiet run pytest-bfs
```

### Backup Conda Environment
```bash
# Backup
conda env export --from-history > environment.yml
conda env export > environment.full.yml

# window caveats...
# https://stackoverflow.com/questions/49638329/how-to-create-conda-env-with-both-name-and-path-specified
```
# Conda todo
```bash
conda install conda-forge::nodejs -y
corepack enable # enables pnpm etc. node is useful overall
yarn install # EPERM again... need to move the store to a different location... or something
yarn run test:q1 # constantly having issues with devcontainer
# created some tmp files? from which command?
conda install conda-forge::jupyterlab -y

```

## GitHub Actions Workflows
1. [ ] Build Wheel
  * [ ] Add PyTest after adding new features
2. [ ] Publish to PyPi

### Requirements.txt
```bash
# Might need to be manually updated for now. Add to CI/CD
poetry export -f requirements.txt --output requirements.txt
poetry export -f requirements.txt --output requirements.txt --without dev
# Warning: poetry-plugin-export will not be installed by default in a future version of Poetry.
# revisit this. it gave a wrong requirements.txt
```

# Dev Notes
## Folder Structure
* levels -> src
* scripts
* cli
  * for Google Fire and Poetry to work properly
```bash
# interesting behavior on ps1
poetry run hychan48-cake-is-not-a-lie --help
# conda create --prefix ./envs --name google-foorbar-2023-q4 python=3.11,pipx,poetry # prefix or name

conda create --prefix ./envs -y python=3.11,pipx,poetry
conda create --prefix ./envs -y python=3.12,pipx,poetry # is the new default

conda deactivate
# conda create --prefix ./envs -y python=3.12,pipx,poetry
```

```bash
# there's also some helpers
# conda env remove -n google-foorbar-2023-q4
# conda activate ./venv

# newer method

# pull
# bats installs differently? weird
# mostly for bats
git pull --recurse-submodule

## bats clones to test/ by default
# 

# first time
# pipx / conda(mamba) / poetry

git submodule add https://github.com/bats-core/bats-core.git test/bats
git submodule add https://github.com/bats-core/bats-assert.git test/test_helper/bats-assert
git submodule add https://github.com/bats-core/bats-support.git test/test_helper/bats-support
git commit -m 'Add bats-support library'

tree test/bats/bin
mkdir -p ~/.local/bin
rm ~/.local/bin/bats
ln -s $PWD/test/bats/bin/bats ~/.local/bin/bats 
ln -s $PWD/test/bats/bin/bats /usr/local/bin/bats
ln -s ./test/bats/bin/bats /usr/local/bin/bats
ls -l /usr/local/bin/bats
bats
export PATH=$PATH:~/.local/bin

# git submodule add https://github.com/ztombol/bats-support test/test_helper/bats-support

```


```powershell
# cygwin / windows 11
pnpm i
# haha didnt work:
conda create -n foobar-py27 python=2.7
conda create -n google-foorbar-2023-q4 python=3.11

conda activate google-foorbar-2023-q4

# update pipx
pipx --version
python -m pip install --user pipx
python -m pipx ensurepath

# poetry... too basic to need it... todo: move to other section
# might not be needed after all...
pipx install poetry
poetry --version
poetry init

# poetry might not be needed after all...
poetry add pytest --group dev
#poetry shell
# 3.11.4 vs 3.11.6... interesting
```

### Install pytest
```bash
conda activate google-foorbar-2023-q4
python -m pip install pytest

python -m pip install -r requirements.txt
```
## Appendix
* [/api/v1/files/](https://foobar.withgoogle.com/api/v1/files/)

