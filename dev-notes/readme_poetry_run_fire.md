# Sample
* when adding new tool.poetry.scripts
* [pyproject.toml[tool.poetry.scripts]](../pyproject.toml#[tool.poetry.scripts])
```bash
poetry install && poetry --quiet run pytest-cake
poetry install && poetry --quiet run pytest-bfs
````
## Update packages
```bash
poetry lock
poetry update fire@latest
poetry update pytest@latest
poetry add pytest@latest

# https://github.com/google/python-fire?tab=readme-ov-file#reference
python -m fire Completion 
```