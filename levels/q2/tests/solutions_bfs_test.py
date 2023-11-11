# PyTest
import sys
import pytest
import logging as log
from levels.q2.src import solutions
from levels.q2.src.solutions import knight_bfs


# def test_name():
#     log.warning("hi")

def test_00_to_77():
    tmp = knight_bfs((0, 0), (7, 7))
    assert tmp == 6


def test_00_to_01():
    tmp = knight_bfs((0, 0), (0, 1))
    assert tmp == 3


def test_00_to_11():
    tmp = knight_bfs((0, 0), (1, 1))
    # print(tmp) # 4 makes more sense
    assert tmp == 4


def test_convert_to_tuple():
    tmp = solutions.convert_to_tuple(0)
    assert tmp == (0, 0)


@pytest.mark.parametrize("test_input,expected", [
    [0, (0, 0)],
    [63, (7, 7)],
    # convert 0 to (0,0), 1 to (0,1), 2 to (0,2), 3 to (0,3), 4 to (0,4), 5 to (0,5), 6 to (0,6), 7 to (0,7)
    # 63 to (7,7)
    [1, (0, 1)],
    [2, (0, 2)],
    [3, (0, 3)],

])
def test_convert_to_tuple_param(test_input, expected):
    tmp = solutions.convert_to_tuple(test_input)
    assert tmp == expected


# solutions
def test_00_to_11_soln():
    tmp = solutions.solution(0, 1)
    assert tmp == 3


@pytest.mark.parametrize("src,dst,expected", [
    [0, 1, 3],
    [0, 9, 4],
    [0, 63, 6],
    [0, 9, 4],  # as i thought dy/dx isnt enough. but good example of ILP boundaries
    [27, 20, 2],  # kinda unexpected
    # [27,20,4], # as i thought
    # //maybe convert to easier input
]
                         )
def test_param_soln(src, dst, expected):
    tmp = solutions.solution(src, dst)
    assert tmp == expected


if __name__ == '__main__':
    pytest.main()
    # pytest.main(sys.argv)

# @pytest.mark.xfail(reason="placeholder initialize")
# @pytest.mark.parametrize("test_input,expected", [
#     ("some_input", "some_output"),
# ])
# def test_initial(test_input, expected):
#     assert False
#     actual = (test_input)
#     try:
#         assert actual == expected
#     except AssertionError:
#         log.warning(actual)
#         assert actual == expected
