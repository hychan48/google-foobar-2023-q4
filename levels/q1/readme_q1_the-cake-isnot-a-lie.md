# Cake no lie
* python 2.7 lol
* iirc python 2.7 supports python 3 syntax more or less
* Algorithm class type of question


# Appendix
* remember when verify / submit check the api
* [/api/v1/files/
](/api/v1/files/
)
* copied to /raw/v1.files.json
* copied to /raw/v1.files.yaml
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

# First steps
* setup env / test
* do it in w/e language im first comfortable with
  * set timer. then seek help, time is precious
* and then do it in python 2.7

# dev env javascript
* q1-exp.test.mjs
  * start with test given and also rotate the input
  * todo add package.json / nested package.json script runners
* most likely a sliding window / recurrence problem
```bash
pnpm run test:q1
```
# env
* probably use mamba/conda for python 2.7