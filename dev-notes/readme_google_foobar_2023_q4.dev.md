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

# Debug

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



# docker wsl setting

```ps1
# ~/AppData/Local
write-host $env:LOCALAPPDATA 
write-host $env:LOCALAPPDATA\Docker\wsl
# Get-ChildItem -Path . -Recurse -Force | Where-Object { $_.Attributes -match 'ReparsePoint' } | Select-Object FullName,Target
Get-ChildItem -Path $env:LOCALAPPDATA\Docker -Recurse -Force | Where-Object { $_.Attributes -match 'ReparsePoint' } | Select-Object FullName,Target
 # changed default $env:LOCALAPPDATA\Docker\wsl to another. the junction didnt work anyway

#  $HOME\AppData\Local\Docker\wsl
# interesting... so if not it creates a dockerdesktopwsl folder
# there's a swap container option,... interestng
wsl --shutdown first..
oh crap it was migating
```


### Requirements.txt
```bash
# Might need to be manually updated for now. Add to CI/CD
poetry export -f requirements.txt --output requirements.txt
poetry export -f requirements.txt --output requirements.txt --without dev
# Warning: poetry-plugin-export will not be installed by default in a future version of Poetry.
# revisit this. it gave a wrong requirements.txt
```

# Conda todo
```bash
conda install conda-forge::nodejs -y
corepack enable # enables pnpm etc. node is useful overall
yarn --version
pnpm --version
# ~/.local/share/pnpm/store/v3
# https://pnpm.io/npmrc#store-dir
printenv PNPM_HOME
ls -l $PNPM_HOME/store
ls -l $PNPM_HOME/store/v3
pnpm config set store-dir $PNPM_HOME/store
pnpm store status
pnpm store path
# defn works... but i dont know if it can be there

####
printenv XDG_DATA_HOME
which pnpm
ls -l `which pnpm`
pnpm config list
pnpm config list --global
# default location are ~/.local/share/pnpm/store or echo $XDG_DATA_HOME/pnpm/store
export SHELL=`which zsh`
pnpm setup # relies on SHELL variable
source ~/.zshrc
printenv PNPM_HOME
pnpm config list
pnpm store path
pnpm doctor
pnpm bin # is this the problem? cuz global worked
pnpm bin --global # print
pnpm install -g tldr # worked

# https://code.visualstudio.com/remote/advancedcontainers/add-nonroot-user
# also need container user? it maps to root for windows..
# containerUser: vscode?
# https://code.visualstudio.com/remote/advancedcontainers/add-local-file-mount
# add mount?

# corepack use pnpm@latest

tldr ls
source ~/.zshrc
pnpm i
ls -dl $PNPM_HOME/store
mkdir -p $PNPM_HOME/store
ls -dl $PNPM_HOME
ls -dl ~/.local/share

sudo chsh --shell /bin/zsh vscode
sudo chsh --shell /usr/bin/zsh vscode
sudo chsh --shell `which zsh` vscode
sudo chsh --shell `which zsh` $USER
sudo echo chsh --shell `which zsh` $USER
sudo echo "chsh --shell `which zsh` vscode"
export SHELL=`which zsh`
printenv SHELL # og was /bin/bash though
getent passwd $USER
getent passwd
# wait is it supposed to be just /bin/zsh
chsh -s `which zsh`
printenv SHELL
# /bin/bash
which -a zsh
sudo passwd
# check shell? it appended to .bashrc?

printenv XDG_DATA_HOME
printenv SHELL
echo $XDG_DATA_HOME/pnpm/store
rm _tmp* # from pnpm...
ls -dl ~/.local/share
tree ~/.local/share/
# ( set -ux echo $XDG_DATA_HOME/pnpm/store)
pnpm store path # check eperm again
yarn install # EPERM again... need to move the store to a different location... or something
yarn run test:q1 # constantly having issues with devcontainer
# created some tmp files? from which command?
conda install conda-forge::jupyterlab -y


micromamba run -n base mycommand
```


# PNPM Debug inside dev container
* changed wsl docker engine to same drive
  * had to reboot
* had to disable intergration and re-check
* added SHELL and pnpm to ~/.zshrc already
* vscode volume... interesting
  * it's only vscode-server?
```bash
conda install conda-forge::nodejs -y
corepack enable # enables pnpm etc. node is useful overall
pnpm --version
printenv SHELL
echo 'export SHELL=`which zsh`' >> ~/.zshrc # added to postCreateCommand.sh
export SHELL=`which zsh`
printenv XDG_DATA_HOME
pnpm setup
source ~/.zshrc
printenv PNPM_HOME
pnpm i # works fine with root... maybe there is a cache issue? 
pnpm i -g tldr # works perfectly.... for both root and vscode in windows
pnpm setup
pnpm uninstall -g tldr # works perfectly.... for both root and vscode in windows
pnpm store path
pnpm config list
pnpm doctor
pnpm store status

# set?
pnpm config get store-dir
pnpm config set store-dir $PNPM_HOME/store
rm -rf .pnpm-store # interesting...
rm pnpm-lock.yaml
pnpm install

# hmm... 
ls -dal .pnpm-store
cd ./pnpm-store
tree $PNPM_HOME -L 1
pnpm i -g tldr # works fine...
# /home/vscode/.local/share/pnpm/global/5:
pnpm init
pnpm install --verbose
pnpm install --help
rm pnpm-lock.yaml
pnpm install
```
* revisit... giving up
* might need a rebuild no cache
* root is the easiest with refs / more than one drive
* [ ] Revisit custom mount
  * using root and it works

# asciinema record
* [ ] rec
  * [ ] prompt
* [ ] upload
* [ ] share with github as markdown
```bash
mkdir -p docs/assets
cd /workspaces/google-foobar-2023-q4

# Recordings - maybe not?
# mkdir -p tmp/
# cd tmp
# do it as root?

# 1.
pipx install asciinema
asciinema rec --help
# defualt
CONDA_PROMPT_MODIFIER="(base) "
unset CONDA_PROMPT_MODIFIER
export CONDA_PROMPT_MODIFIER=""
export PROMPT="hychan48%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ ) %{$fg[cyan]%}%c%{$reset_color%} "
# didnt work
code ~/.zshrc # just update this manually... arg
source ~/.zshrc # just update this manually... arg

asciinema rec -t "pnpm run test:q1" -i 5 --cols 80 --rows 24 --overwrite --env PROMPT --env CONDA_PROMPT_MODIFIER tmp/pnpm-run-test-q1.cast
exit
pnpm run test:q1
exit
ls -l
asciinema cat pnpm-run-test-q1.cast
asciinema play pnpm-run-test-q1.cast

# Upload afterwards
asciinema upload tmp/pnpm-run-test-q1.cast
## follow instructions

rsync tmp/*.cast docs/assets/
```

## Tasks
```bash
asciinema rec -t "hychan48-cake-is-not-a-lie abab" -i 5 --cols 80 --rows 24 --overwrite --env PROMPT --env CONDA_PROMPT_MODIFIER tmp/hychan48-cake-is-not-a-lie-abab.cast
asciinema upload tmp/hychan48-cake-is-not-a-lie-abab.cast
```
```bash
asciinema rec -t "pytest levels/q1/tests/solutions_test.py" -i 5 --cols 80 --rows 24 --overwrite --env PROMPT --env CONDA_PROMPT_MODIFIER tmp/pytest-levels-q1-tests-solutions_test.py.cast
asciinema upload tmp/pytest-levels-q1-tests-solutions_test.py.cast
```
```bash
asciinema rec -t "hychan48-dont-get-volunteered 0 1" -i 5 --cols 80 --rows 24 --overwrite --env PROMPT --env CONDA_PROMPT_MODIFIER tmp/hychan48-dont-get-volunteered-0-1.cast
asciinema upload tmp/hychan48-dont-get-volunteered-0-1.cast
```
```bash
asciinema rec -t "pytest ./levels/q2/tests/solutions_bfs_test.py" -i 5 --cols 80 --rows 24 --overwrite --env PROMPT --env CONDA_PROMPT_MODIFIER tmp/pytest-levels-q2-tests-solutions_test.py.cast
# max col -yep... so it was spilling because of the col
asciinema rec -t "pytest ./levels/q2/tests/solutions_bfs_test.py" -i 5 --rows 24 --overwrite --env PROMPT --env CONDA_PROMPT_MODIFIER tmp/pytest-levels-q2-tests-solutions_test.py.cast
asciinema rec -t "pytest ./levels/q2/tests/solutions_bfs_test.py" -i 5 --cols 100 --rows 24 --overwrite --env PROMPT --env CONDA_PROMPT_MODIFIER tmp/pytest-levels-q2-tests-solutions_test.py.cast
pytest levels/q2/tests/solutions_bfs_test.py
asciinema upload tmp/pytest-levels-q2-tests-solutions_test.py.cast
asciinema cat tmp/pytest-levels-q2-tests-solutions_test.py.cast
asciinema play tmp/pytest-levels-q2-tests-solutions_test.py.cast
```
