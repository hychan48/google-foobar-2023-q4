# Info Dump
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

# Demo Checklist
* asciinema
* repl.it
* jupyter
* YT would be luxury
* Docker