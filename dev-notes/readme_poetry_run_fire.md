# Sample
* when adding new tool.poetry.scripts
* [pyproject.toml[tool.poetry.scripts]](../pyproject.toml#[tool.poetry.scripts])
```bash
# cli dev assist
poetry install && poetry --quiet run pytest-cake
poetry install && poetry --quiet run pytest-bfs

# help
poetry install && poetry --quiet run hychan48-cake-is-not-a-lie --help
PAGER=cat poetry --quiet run hychan48-cake-is-not-a-lie --help
poetry run hychan48-cake-is-not-a-lie --help

# quick pytest smoke tests
pytest levels/q1/tests/solutions_test.py
pytest levels/q2/tests/solutions_bfs_test.py
````
## Update packages
```bash
poetry lock
poetry update fire@latest
poetry update pytest@latest --group dev
# delete re-add seems tehe easiest
poetry add pytest@latest --group dev
poetry add fire@latest

# https://github.com/google/python-fire?tab=readme-ov-file#reference
python -m fire Completion 
```