import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

data = pd.read_csv("imdb.csv")
plt.plot(data["votes"], color="red")