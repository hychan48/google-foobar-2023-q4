# google-foobar-2023-q4
* https://github.com/hychan48/google-foobar-2023-q4
* I searched proxy vs load balancer. and at first I found it mad sketch
* had to verify it's SSL/TLS cert and Google was foobar was.

## Level 1
* [readme_q1_the-cake-isnot-a-lie.md](levels%2Fq1%2Freadme_q1_the-cake-isnot-a-lie.md)
```bash
pnpm run test:q1
python -m pytest levels/q1/tests/solutions_test.py
```
* interestingly... it's obv mad outdated askign for java 8 or python 2.7
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