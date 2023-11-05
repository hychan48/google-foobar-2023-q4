# google-foobar-2023-q4
* Answers and how i reached solutions
* https://github.com/hychan48/google-foobar-2023-q4
* I searched proxy vs load balancer. and i found it mad sketch
* had to verify it's SSL/TLS cert and Google was foobar was.
## Level 1
* interstingly... it's obv mad outdated askign for java 8 or python 2.7
* iirc python 2.7 supports python 3 syntax more or less

# dev setup
```bash
pnpm i
# haha didnt work:
conda create -n foobar-py27 python=2.7
conda create -n google-foorbar-2023-q4 python=3.11

conda activate google-foorbar-2023-q4

# update pipx
pipx --version
python -m pip install --user pipx
python -m pipx ensurepath

pipx install poetry
poetry --version
poetry init
```

## poetry
```bash

```