import sys
import pandas as pd

print("All Args : ", sys.argv)
month = sys.argv[1]
df = pd.DataFrame({"Day": [1,2], "Num_Passengers" : [3,4]})
df['month'] = month

print("Data Frame Data: ")
print(df.head())
df.to_parquet(f"output_{month}.parquet")
print(f"saved as output_{month}.parquet")