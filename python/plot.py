import numpy as np 
import matplotlib.pyplot as plt  

# Compute the x and y coordinates for points on a sine curve 
x = np.arange(0, 10 * np.pi, 1) 
y = np.tan(x) 
plt.title("tan wave form") 

# Plot the points using matplotlib 
plt.plot(x, y) 
plt.show() 