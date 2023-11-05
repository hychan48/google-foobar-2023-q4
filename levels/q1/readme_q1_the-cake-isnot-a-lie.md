# Cake no lie
## Question 
```txt
Create a function `solution(s)` to divide a cake with a circular sequence of M&Ms into equal parts.
Each of `s`'s characters (a-z) represents a different color M&M. 
The string represents the order of M&Ms, and the goal is to cut the cake into as many equal slices as possible, 
with each slice having the same sequence of M&Ms without leftovers. 

The input `s` is a non-empty string with a maximum length of 200 characters. 
Return the maximum number of equal slices that can be made.
```

## Expected Values
```txt
-- Python cases --
Input:
solution.solution("abccbaabccba")
Output:
    2
    
abccba
abccba

Input:
solution.solution("abcabcabcabc")

abc
abc
abc
abc
Output:
    4
```

## Keywords
* max 200 chars
* equal slices. as many as possible
* same sequence of M&Ms without leftovers
* array is circular
* 1-26
* 
## Solution
* divide the string into equal parts
* using a sliding window
```bash
pnpm run test:q1 # javascript solution
python -m pytest levels/q1/tests/solutions_test.py # python 3.11 soln
# python 3.11 should work in 2.7 too due to it's simplicity.
```


# Appendix
* ignored constraints
* remember when verify / submit check the api
* [/api/v1/files/
](https://foobar.withgoogle.com/api/v1/files/)
* copied to /raw/v1.files.json
* copied to /raw/v1.files.yaml

## First steps
* setup env / test
* do it in w/e language im first comfortable with
  * set timer. then seek help, time is precious
* and then do it in python 2.7
* Chose Python over java just because I have PyCharm already installed

## dev env javascript
* q1-exp.test.mjs
  * start with test given and also rotate the input
  * todo add package.json / nested package.json script runners
* most likely a sliding window / recurrence problem
## env
* probably use mamba/conda for python 2.7
* didnt work... let's just use 3.11 with conda first

* python 2.7 lol
* iirc python 2.7 supports python 3 syntax more or less
* Algorithm class type of question
