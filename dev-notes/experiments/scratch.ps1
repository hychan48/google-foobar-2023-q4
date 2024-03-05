<#
  pipx with git / https
#>
# check pipx install
# pipx list |grep foobar
# interesting... doesnt call main
# oic... that's normal
poetry install
poetry run hychan48-cake-is-not-a-lie
poetry run hychan48-cake-is-not-a-lie abab
poetry run hychan48-cake-is-not-a-lie asdasd

python -m fire levels --help
python -m fire levels fire_q1 --help 
python -m fire levels fire_q1 --help | head -n 10
python -m fire levels --help | head -n 10
python -m fire levels solution --help | head -n 10
python -m fire levels q1_solution --help | head -n 10
python -m fire levels q1 --help | head -n 10
python -m fire levels --help | head -n 10

# ok
python -m fire levels --help
python -m fire levels cake "asdasd"

poetry install
poetry run hychan48 ---helpx.  m 
poetry run hychan48-cake-is-not-a-lie "asdasd"
poetry run hychan48-cake-is-not-a-lie --help

# pipx run 

exit 0

<#
https://pypa.github.io/pipx/
perhaps add this to jupyter notebook / repl.it and
https://codeforwings.github.io/vite-press-docs/
#>
get-command pipx
pipx ensurepath
pipx completions

# adds to $HOME/.local/bin
pipx install pycowsay
pycowsay
pipx list # only asciinema and poetry atm and csvkit
pipx list |grep pycowsay

# right there's a few packages i want. certbot is one of em

# so... --spec might be needed
# confirm with poetry name and package name are the same
# ahh opkay pipx caches the venv

# Examples for black
pipx install git+https://github.com/psf/black.git
pipx install git+https://github.com/psf/black.git@branch  # branch of your choice
pipx install git+https://github.com/psf/black.git@ce14fa8b497bae2b50ec48b3bd7022573a59cdb1  # git hash
pipx install https://github.com/psf/black/archive/18.9b0.zip  # install a release

# Pip Egg for extras like Jupyter Notebook support
pipx install "git+https://github.com/psf/black.git#egg=black[jupyter]"

# https://sourcery.ai/blog/python-best-practices/
# cookie cutter not bad
# o mypy static typer
# should checkout
# i doubt it's backward compatible with 2.7 though
pipx list
# https://github.com/cs01/pycowsay
pipx run pycowsay
pipx run pycowsay moo

# pipx clear cache
# didnt work
pipx run git+https://github.com/cs01/pycowsay.git

# works:. took a bit of time though to initialize first time
pipx run --spec git+https://github.com/cs01/pycowsay.git pycowsay moo
pipx install git+https://github.com/cs01/pycowsay.git # works w/o spec



pycowsay moo
pipx uninstall pycowsay
# https://pypa.github.io/pipx/docs/
# oo 
Get-ChildItem env:PIP_*

