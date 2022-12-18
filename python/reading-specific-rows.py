import pandas as pd
data = pd.read_csv('c:\devops\python\simple\input.csv')

# Slice the result for first 5 rows
print (data[0:2]['salary'])