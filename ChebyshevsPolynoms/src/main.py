import matplotlib.pyplot as plot
import numpy as np
import sympy as sm
import scipy as sc

x = np.linspace(-10, 10, 1000)
plot.plot(x, np.cos(x))
plot.show()