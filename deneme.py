import pandas as pd
name = 'Walmart-raw.csv'
nameNOEXT = name.split('.')[0]
df = pd.read_csv(name)
df.to_csv(f'{nameNOEXT}_fixed.csv', sep=';', index=False)
print('dosya donusturuldu')