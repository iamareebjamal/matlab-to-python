import numpy as np
from sympy import *
import matplotlib.pyplot as plt

x = symbols('x')
init_printing(use_unicode=True)

x_range = np.arange(0.001, 0.8, 0.01)

def compute(factor):
    xi = []
    c1 = 1./6
    c2 = factor*c1
    eqs = []
    for phi in x_range:
        c1a= (4.073*np.sqrt(c1)+1.053*c2)*0.5*(3*np.cos(1.5*phi)+np.cos(0.5*phi))
        c2a= 5.28*c2*np.sin(phi)*np.cos(phi)
        eq = c1a*x**(1.5)-x-c2a
        eqs.append(eq)
        # solx = solve(eq, x)
        # xi.append(solx[0])
    xi = [solve(eq, x) for eq in eqs]
    print('eq', factor, phi, eq)
    return xi

factors = (1./50, 1./10, 1, 5)

plt.ion()

for factor in factors:
    plt.plot(x_range, compute(factor))
    plt.pause(0.01)

plt.ioff()
print('Finished')
plt.show()
