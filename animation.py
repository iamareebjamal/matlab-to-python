import numpy as np
import matplotlib.pyplot as plt
from matplotlib import cm
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.animation as animation

X = Y = np.arange(0, 2, 0.05)
X, Y = np.meshgrid(X, Y)

m = int(input('m: '))
n = int(input('n: '))

frames = 101
Z = [3*(np.sin(m*np.pi*X/2))*(np.sin(n*np.pi*Y/2))*np.sin(i/10) for i in range(frames)]

fig = plt.figure()
ax = Axes3D(fig)
ax.set_zlim(-5, 5)
plot = ax.plot_surface(X, Y, Z[50], cmap=cm.viridis)

def update_lines(frame):
    global plot
    plot.remove()
    plot = ax.plot_surface(X, Y, Z[frame], cmap=cm.viridis)
    return plot,

ani = animation.FuncAnimation(fig, update_lines, frames, interval=50)

plt.show()
