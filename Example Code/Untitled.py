import pandas_datareader.data as web
import numpy as np
import pandas as pd
from sklearn import mixture as mix
import seaborn as sns
import matplotlib.pyplot as plt
import talib as ta
from sklearn.preprocessing import StandardScaler
from sklearn.svm import SVC
import fix_yahoo_finance

df = web.get_data_yahoo('GOOG', start = '2001-01-01', end = '2017-08-01')
df = df[['Open', 'High','Low', 'Close']]
