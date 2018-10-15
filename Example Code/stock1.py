import quandl
import pandas as pd
import numpy as np
import datetime
import matplotlib.pyplot as plt
import sys

from sklearn.linear_model import LinearRegression
from sklearn import preprocessing, cross_validation, svm

var = input("Enter stock ticker: ")
temp = "WIKI/" + var
df = quandl.get(temp)

df = df[['Adj. Close', 'High']]

print(df.head)

forecast_out = int(30)

df['Prediction'] = df[['Adj. Close']].shift(-forecast_out)

X = np.array(df.drop(['Prediction'],1))
X = preprocessing.scale(X)

X_forecast = X[-forecast_out:]
X = X[:-forecast_out]

y = np.array(df['Prediction'])
y = y[:-forecast_out]

X_train, X_test, y_train, y_test = cross_validation.train_test_split(X, y, test_size = 0.2)

clf = LinearRegression()
clf.fit(X_train,y_train)

confidence = clf.score(X_test, y_test)
print("confidence: ", confidence)

forecast_prediction = clf.predict(X_forecast)
print(forecast_prediction)

plt.plot(forecast_prediction)
plt.show()
