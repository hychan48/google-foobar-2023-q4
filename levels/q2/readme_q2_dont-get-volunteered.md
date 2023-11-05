# Don't Get Volunteered
## Question Summarized
```md
Create a function named solution(src, dest)
to calculate the minimum number of moves a **Knight** - in a game of Chess -
must make to travel from one square to another on a chessboard? 

The squares are numbered from 0 to 63, like a standard chessboard. 
Knight moves two squares in any direction immediately followed by one square perpendicular to that direction, 
or vice versa, in an "L" shape).

Shown in the appendix
```
## Solution Summarized

[//]: # (todo)
## Expected Values
```txt
-- Python cases --
Input:
solution.solution(19, 36)
Output:
    1

Input:
solution.solution(0, 1)
Output:
    3
```
### Knight's Tour Solution
* https://www.maths-resources.com/knights/
![solution-1_19-to-36-in-1.png](raw%2Fknight-tour-solution-1.png)
![solution-2_0-to-1-in-3.png](raw%2Fknight-tour-solution-2.png)
## Keywords
<!-- if applicable for question / expected value -->
## Solution


# Initial thoughts
* Interesting question to animate. However, let's just get it done
  * Like the Knight's Tour problem animation.
  * [Interactive Knight's Tour](https://www.maths-resources.com/knights/)
  * 
* Good ol brute force? Dynamic programming? or greedy?
  * Challenge is to guarantee the minimum number of moves
* Python 3.11.6 should be backwards compatible with 2.7 for this question. Based on previous experience.
  * Can be optimized by using @mnemonic decorator
    * However, support was dropped for 2.7 since it's deprecated amost 4 years ago in 2020

# Appendix
## Raw Question
* levels/q1/raw/q1_readme.txt.html
<!-- Had to convert to txt... html tag on GitHub didn't format properly -->
```txt
Don't Get Volunteered!
======================
As a henchman on Commander Lambda's space station, you're expected to be resourceful, smart, and a quick thinker.
It's not easy building a doomsday device and ordering the bunnies around at the same time, after all!
In order to make sure that everyone is sufficiently quick-witted, 
Commander Lambda has installed new flooring outside the henchman dormitories.

It looks like a chessboard, 
and every morning and evening you have to solve a new movement puzzle in order to cross the floor.
That would be fine if you got to be the rook or the queen, but instead, you have to be the knight. 
Worse, if you take too much time solving the puzzle, 
you get "volunteered" as a test subject for the LAMBCHOP doomsday device!

To help yourself get to and from your bunk every day, 
write a function called solution(src, dest) which takes in two parameters: 
the source square, on which you start, and the destination square, which is where you need to land to solve the puzzle.
The function should return an integer representing the smallest number of moves it will take
for you to travel from the source square 
to the destination square using a chess knight's moves
(that is, two squares in any direction immediately followed by one square perpendicular to that direction, 
or vice versa, in an "L" shape).
Both the source and destination squares will be an integer between 0 and 63, inclusive, 
and are numbered like the example chessboard below:

-------------------------
| 0| 1| 2| 3| 4| 5| 6| 7|
-------------------------
| 8| 9|10|11|12|13|14|15|
-------------------------
|16|17|18|19|20|21|22|23|
-------------------------
|24|25|26|27|28|29|30|31|
-------------------------
|32|33|34|35|36|37|38|39|
-------------------------
|40|41|42|43|44|45|46|47|
-------------------------
|48|49|50|51|52|53|54|55|
-------------------------
|56|57|58|59|60|61|62|63|
-------------------------

Languages
=========

To provide a Python solution, edit solution.py
To provide a Java solution, edit Solution.java

Test cases
==========
Your code should pass the following test cases.
Note that it may also be run against hidden test cases not shown here.

-- Python cases --
Input:
solution.solution(19, 36)
Output:
    1

Input:
solution.solution(0, 1)
Output:
    3

-- Java cases --
Input:
Solution.solution(19, 36)
Output:
    1

Input:
Solution.solution(0, 1)
Output:
    3

Use verify [file] to test your solution and see how it does. When you are finished editing your code, use submit [file] to submit your answer. If your solution passes the test cases, it will be removed from your home folder.
```