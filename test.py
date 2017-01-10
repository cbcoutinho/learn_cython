# A script to verify correctness
from pygfunc import f
print(f(1., a=-1., b=1., n=4))

import numpy as np
a = np.linspace(-1, 1, 4)**2
A, B = np.meshgrid(a, a, copy=False)
print(np.exp(-(A + B)))
