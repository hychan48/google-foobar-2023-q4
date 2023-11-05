# PyTest
import sys
import pytest
from levels.q1.src import solution


# import logging as log
# solution.solution because that was the ask.
def test_solution_with_repeated_pattern_abccba():
    assert solution.solution("abccbaabccba") == 2


def test_solution_with_repeated_pattern_abc():
    assert solution.solution("abcabcabcabc") == 4


# Adding circular rotations tests
def test_solution_with_circular_rotation_bccbaa():
    assert solution.solution("bccbaabccbaa") == 2


def test_solution_with_circular_rotation_ccbaab():
    assert solution.solution("ccbaabccbaab") == 2


def test_solution_with_circular_rotation_cbaabc():
    assert solution.solution("cbaabccbaabc") == 2


def test_solution_with_circular_rotation_baabcc():
    assert solution.solution("baabccbaabcc") == 2


def test_solution_with_circular_rotation_aabccb():
    assert solution.solution("aabccbaabccb") == 2


def test_solution_with_single_character():
    assert solution.solution("a") == 1


def test_solution_with_unique_characters():
    assert solution.solution("abcdefg") == 1


# More tests can be added in a similar manner


if __name__ == '__main__':
    pytest.main(sys.argv)
