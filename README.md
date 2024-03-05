# @hychan48/google-foobar-2023-q4
## Production
<!-- todo
add some assets
# pip install google-foobar-2023-q4
hychan48-cake-is-not-a-lie --help
-->
<!-- todo add links for github, pypi, docker
Remove dev code from the main readme
Check with guidelines
asciinema / jyupter on repl.it?
-->
### Installation
```bash
# https://replit.com/@jasonchan51/hychan48-google-foobar-2023-q4
pipx install hychan48-google-foobar-2023-q4

hychan48-cake-is-not-a-lie --help
hychan48-cake-is-not-a-lie abab
hychan48-dont-get-volunteered 0 1
```
<!-- 
# pipx install git+https://github.com/hychan48/google-foobar-2023-q4.git
#pipx run --spec git+

# Returns 2

```
 -->

## Level 1
* [readme_q1_the-cake-isnot-a-lie.md](levels/q1/readme_q1_the-cake-isnot-a-lie.md)
```bash
hychan48-cake-is-not-a-lie abab

# GitHub action runs the PyTests:
pytest levels/q1/tests/solutions_test.py
# JavaScript solution
pnpm run test:q1
```

## level 2 
### Question 1
* [readme_q2_dont-get-volunteered.md](levels/q2/readme_q2_dont-get-volunteered.md)
* Simplified Knight's Tour problem
  * Textbook BFS, but I wanted to animate it
  * [BFS Wiki](https://en.wikipedia.org/wiki/Breadth-first_search)
  * [Knight's Tour Game](https://www.maths-resources.com/knights/)
* Experimented with ILP. Good example to teach with
```bash
hychan48-dont-get-volunteered 0 1 # Returns 3
pytest ./levels/q2/tests/solutions_bfs_test.py
```

## Background
* https://github.com/hychan48/google-foobar-2023-q4
* I searched proxy vs load balancer. and at first I found it mad sketch
* had to verify it's SSL/TLS cert and Google was foobar was.

## Assumptions
* So far it looks like it's either Python 2.7 or Java 8
* I'm going to use Python 3.11.6, using basic syntax it should be backwards compatible with 2.7
  * Also, I have PyCharm installed already
* TDD with PyTest




# Quick Checklist
- [ ] Documentation
  - Save Original Question
    - [ ] /api/v1/files/ (.json)
    - [ ] convert to .yaml and .html
  - Reword Question and Keywords
    - [ ] readme_q.template.md
  - Principles
    - TDD / BDD
    - Quick and dirty
      - Unless the question piques my research interest
      - 7 days per question seems like a lot of time
  - Priorities
  - [ ] JSDoc @typedef but for Python 
  - [ ] Metadata
    - [ ] Author
    - [ ] GitHub Repo
    - [ ] Environment
    - Time / Space Complexity (if applicable)
- [ ] Validation / Error handling
- [ ] Test cases / Unit Tests
  - [ ] Workflow with GitHub actions
    - Lint - Flake8
    - Unit Tests - PyTest
    - Black / isort / mypy (might not work for 2.7)

# dev setup




## Appendix
* [/api/v1/files/](https://foobar.withgoogle.com/api/v1/files/)

