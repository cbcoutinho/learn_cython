from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext
# This line only needed if building with NumPy in Cython file.
import numpy as np

ext_modules = [Extension(# module name:
                         'pygfunc',
                         # source file:
                         ['pygfunc.pyx'],
                         # other compile args for gcc
                         extra_compile_args=['-fPIC', '-O3'],
                         # other files to link to
                         extra_link_args=['gfunc.o', 'pygfunc.o'])]

setup(name = 'pygfunc',
      cmdclass = {'build_ext': build_ext},
      # Needed if building with NumPy.
      # This includes the NumPy headers when compiling.
      include_dirs = [np.get_include()],
      ext_modules = ext_modules)
