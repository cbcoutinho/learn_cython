# A script to verify correctness
from pygfunc import f
print('Cythonized wrapper:')
print(f(1., a=-1., b=1., n=6))
print()

import numpy as np
a = np.linspace(-1, 1, 6)**2
A, B = np.meshgrid(a, a, copy=False)
print('Python wrapper:')
print(np.exp(-(A + B)))
print()
