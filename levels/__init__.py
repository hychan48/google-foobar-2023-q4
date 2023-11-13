# For making levels a python package
# https://google.github.io/python-fire/guide/
import fire
from levels.q1.src.solution import solution as cake

"""
addf __allH
python -m fire levels --help | head -n 10
python -m fire levels q1 --help | head -n 10

"""
# def cake():
#     fire.Fire(q1s)
def main():
    fire.Fire()
if __name__ == '__main__':
    main()
#     # Note: key / value has to match
#     fire:Fire({
#         'cake': cake
#     })
