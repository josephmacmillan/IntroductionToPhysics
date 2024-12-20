import numpy as np
import matplotlib
import matplotlib.pyplot as plt
from matplotlib import rc

A = 1.5
w = 1.2
phi = np.pi/3.0
t = np.arange(0, 15, 0.01)
x = A * np.cos(w*t + phi)
a = -w*w * x
amax = w*w*A

rc('text', usetex=True)
matplotlib.rcParams['mathtext.fontset'] = 'cm'
matplotlib.rcParams['font.family'] = 'STIXGeneral'
plt.rcParams.update({'font.size':14})
plt.rc('axes', labelsize=16)
plt.rcParams.update({'figure.autolayout': True})

fig = plt.figure(figsize=(8, 3))
ax = fig.add_subplot(1,1,1)
#ax.grid(True)
ax.plot(t, a, color="red")
ax.set_xlabel('$t$')
ax.set_ylabel('$a(t)$', rotation=0)
ax.spines['left'].set_position('zero')
ax.spines['right'].set_color('none')
ax.xaxis.set_ticks([])
ax.spines['bottom'].set_position('zero')
ax.spines['top'].set_color('none')
ax.xaxis.tick_bottom()
ax.yaxis.set_ticks([])
ax.yaxis.set_label_coords(0.05,1.01)
ax.xaxis.set_label_coords(1, 0.48)

ax.text(-1.3,2.2, "$a_{max}$")
ax.text(-1.6,-2.1, "$-a_{max}$")

ax.axhline(y=amax, xmin=0.035, xmax=0.055, color="black", linewidth=1)
ax.axhline(y=-amax, xmin=0.035, xmax=0.055, color="black", linewidth=1)

plt.savefig("fig_acc.pdf", transparent=True)
