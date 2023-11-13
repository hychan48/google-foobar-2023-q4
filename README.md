# google-foobar-2023-q4
## Production
<!-- todo
add some assets
-->

## Installation
```bash
pipx install git+https://github.com/hychan48/google-foobar-2023-q4.git
#pipx run --spec git+

hychan48-cake-is-not-a-lie abab
# Returns 2

```
## Level 1
* [readme_q1_the-cake-isnot-a-lie.md](levels/q1/readme_q1_the-cake-isnot-a-lie.md)
```bash
cat levels/q1/src/solution.py
# GitHub action runs PyTest
python -m pytest levels/q1/tests/solutions_test.py
# JavaScript solution
pnpm run test:q1
```

## level 2 
* [readme_q2_dont-get-volunteered.md](levels/q2/readme_q2_dont-get-volunteered.md)
* Simplified Knight's Tour problem
  * Textbook BFS, but I wanted to animate it
  * [BFS Wiki](https://en.wikipedia.org/wiki/Breadth-first_search)
  * [Knight's Tour Game](https://www.maths-resources.com/knights/)
* Experimented with ILP. Good example to teach with
```bash
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
    - TDD
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

# dev setup
```bash
# there's also some helpers
conda activate ./venv

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

