from collections import deque
"""
# @author: hychan48
https://github.com/hychan48/google-foobar-2023-q4/blob/e1839dae7b8eb5d72061ab87c820f3ca4629a440/levels/q2/src/solutions.py#L1-L0

# BFS Solution

# unit tested with
https://github.com/hychan48/google-foobar-2023-q4/blob/main/levels/q2/tests/solutions_bfs_test.py
# Alt solution with ILP
"""

# Define the size of the chessboard
N = 8

# Possible moves a knight can make
# like a compass NNW, NNE, ENE, ESE, SSE, SSW, WSW, WNW
knight_moves = [
    """
    :param x: dx
    :param y: dy
    """
    (-2, -1), (-1, -2), (1, -2), (2, -1),
    (-2, 1), (-1, 2), (1, 2), (2, 1)
]


# Check if the position is inside the board and not already visited
def is_valid(x, y, visited):
    """
    :param x:
    :param y:
    :param visited:
    :return:
    """
    # if not visited x,y and within bounds of 0-7 (N is 8, 8x8 board)
    return (0 <= x < N) and (0 <= y < N) and not visited[x][y]


# BFS to find the shortest path for a knight on a chessboard
def knight_bfs(start:int, end:int):
    """
    :param start: (x,y)
    :param end: (x,y)
    :return:
    # Example usage:
    # assumes inputs are sanitized by caller
    # assert knight_bfs((0, 0), (0,1)) == 3
    https://en.wikipedia.org/wiki/Breadth-first_search
    """
    # Initialize 8x8 chess board / grid / matrix with False.
    visited = [[False for _ in range(N)] for _ in range(N)]

    # Create a queue and enqueue the starting position with a distance of 0
    queue = deque([(start[0], start[1], 0)])
    visited[start[0]][start[1]] = True

    # Loop until the queue is empty
    while queue:
        x, y, dist = queue.popleft()

        # If the current position is the end position, return the distance
        if (x, y) == end:
            return dist

        # Check all possible moves the knight can make
        for dx, dy in knight_moves:
            new_x, new_y = x + dx, y + dy

            # If the new position is valid, mark it as visited and enqueue it
            if is_valid(new_x, new_y, visited):
                visited[new_x][new_y] = True
                queue.append((new_x, new_y, dist + 1))

    # If the end position is not reached, return -1
    return -1


# convert 0 to (0,0), 1 to (0,1), 2 to (0,2), 3 to (0,3), 4 to (0,4), 5 to (0,5), 6 to (0,6), 7 to (0,7)
# 63 to (7,7)
def convert_to_tuple(num:int):
    """
    :param num: 0-63
    :return: (0,0) - (7,7)

    """
    # divide by 8 and '//' floor. and mod 8. standard math. unit tested just incase
    return num // 8, num % 8


def solution(src:int, dest:int):
    """
    Simplified Knight's Tour using Breadth First Search on 8x8

    Also created an altnerative in ILP solution for practice
    :param src: 0-63
    :param dest: 0-63
    :return: int: number of moves to get from src to dest
    """
    # verify / throw error if src and dest are not within 0-63
    if src < 0 or src > 63 or dest < 0 or dest > 63:
        raise ValueError("src and dest must be between 0-63")

    # convert 0 to (0,0), 1 to (0,1), 2 to (0,2), 3 to (0,3), 4 to (0,4), 5 to (0,5), 6 to (0,6), 7 to (0,7)
    return knight_bfs(convert_to_tuple(src), convert_to_tuple(dest))
