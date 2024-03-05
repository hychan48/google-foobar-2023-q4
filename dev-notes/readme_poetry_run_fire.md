# Sample
* when adding new tool.poetry.scripts
* [pyproject.toml[tool.poetry.scripts]](../pyproject.toml#[tool.poetry.scripts])
```bash
poetry install && poetry --quiet run pytest-cake
poetry install && poetry --quiet run pytest-bfs

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