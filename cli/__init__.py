# Just for cli using fire
# to make poetry and fire nicely together
# scripts/smoke-tests/python-fire-cli.bats
import fire
import pytest
from levels.q1.src.solution import solution as cake
from levels.q2.src.solutions import solution as knight_bfs
# hychan48-cake-is-not-a-lie
def fire_cake():
    fire.Fire(cake)
def pytest_cake():
    pytest.main(['-x','levels/q1/tests/solutions_test.py'])
# hychan48-dont-get-volunteered
def fire_knight_bfs():
    fire.Fire(knight_bfs)
def pytest_knight_bfs():
    pytest.main(['-x','levels/q2/tests/solutions_test.py'])   

