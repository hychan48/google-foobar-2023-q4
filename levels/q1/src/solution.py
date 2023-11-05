def solution(str_input):
    """
    solution level 1 - python version
    https://github.com/hychan48/google-foobar-2023-q4/blob/main/levels/q1/src/solution.py
    https://github.com/hychan48/google-foobar-2023-q4/blob/main/levels/q1/tests/solutions_test.py
    :param str_input: Sequence of characters a-z. max length is 200 chars
    :type str_input: str
    :return: The maximum number of equal parts that can be cut from the cake without leaving any leftovers.
    :rtype: int
    :example: returns 1 if no exact repeated pattern are found
    :description: Quick and dirty solution:
        < 200 characters so shouldn't be an issue
        O(sqrt(n)) time complexity
        O(n*sqrt(n)) worst time complexity
    """
    # Length - max 200
    input_length = len(str_input)
    if input_length > 200:
        raise ValueError('String length must be less than 200')

    def can_divide(window_sliding_length):
        """
        Helper function to check if the string can be divided into equal parts of a given length

        :param window_sliding_length: The length of the sliding window to check for repeated patterns
        :type window_sliding_length: int
        :return: True if the string can be divided into equal parts of the given length, False otherwise
        :rtype: bool
        """
        # Current reference pattern of sliding window
        pattern = str_input[:window_sliding_length]
        # Iterate over all windows of length window_sliding_length
        for i in range(window_sliding_length, input_length, window_sliding_length):
            # Early exit if not found
            if str_input[i:i + window_sliding_length] != pattern:
                return False
        return True

    # Iterate over all divisors of input_length
    for d in range(1, input_length // 2 + 1):

        # If input_length is divisible by d
        if input_length % d == 0 and can_divide(d):
            # i.e. input_length / pattern_length = part_length. 12/6 = 2
            # Convert to answer's format, i.e., number of equal parts
            return input_length // d

    # Else: no pattern is found, you can only cut the cake into 1 part
    return 1


# Example usage
# print(solution("abccbaabccba"))  # Expected output: 2
