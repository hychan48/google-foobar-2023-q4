from collections import deque
import pytest

# Define the size of the chessboard
N = 8

# Possible moves a knight can make
knight_moves = [
    (-2, -1), (-1, -2), (1, -2), (2, -1),
    (-2, 1), (-1, 2), (1, 2), (2, 1)
]


# Check if the position is inside the board and not already visited
def is_valid(x, y, visited):
    return (0 <= x < N) and (0 <= y < N) and not visited[x][y]


# BFS to find the shortest path for a knight on a chessboard
def knight_bfs(start, end):
    """
    :param start:
    :param end:
    :return:
    # Example usage:
    # assert knight_bfs((0, 0), (0,1)) == 3
    """
    # Create a visited 2D array and initialize it with False
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
def convert_to_tuple(num):
    """
    :param num: 0-63
    :return: (0,0) - (7,7)
    """
    return num // 8, num % 8


def solution(src, dest):
    """
    Simplified Knight's Tour using Breadth First Search on 8x8

    Also created an altnerative in ILP solution for practice
    :param src: 0-63
    :param dest: 0-63
    :return:
    """
    # convert 0 to (0,0), 1 to (0,1), 2 to (0,2), 3 to (0,3), 4 to (0,4), 5 to (0,5), 6 to (0,6), 7 to (0,7)
    # todo add error handling / check

    return knight_bfs(convert_to_tuple(src), convert_to_tuple(dest))
