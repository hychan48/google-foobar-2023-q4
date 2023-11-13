import sys
from pathlib import Path

# for fixing path in docker / github actions

# Calculate the directory of your package and add it to sys.path
# repo_dir = Path(__file__).parent.parent  # Adjust depending on `conftest.py` location
repo_dir = Path(__file__).parent  # Adjust depending on `conftest.py` location
sys.path.insert(0, str(repo_dir))

# i think pyproject.toml didnt work... but might not be needed with proper config from poetry
