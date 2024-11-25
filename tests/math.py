'''Module containing some math'''

from itertools import combinations_with_replacement
from itertools import product
# from logic import interpret_and_calculate


# def test_interpret_and_calculate():
#     print("running tests")
#     data = {"23","1","1","1","1","0","1","2","2","3","2",
#     "2","3","2","1","1","1","1","1","1","0","1","1","1"
#     }
#     result = interpret_and_calculate(data)
#     print(data)


# Cartesian product of [0, 1] repeated 2 times
result = list(product([0, 1], repeat=2))

# Output: [(0, 0), (0, 1), (1, 0), (1, 1)]
print(result)

result = list(combinations_with_replacement([0, 1], 2))

# Output: [(0, 0), (0, 1), (1, 1)]
print(result)
