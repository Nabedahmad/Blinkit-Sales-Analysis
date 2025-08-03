# DATA ANALYSIS PYTHON PROJECT - BLINKIT ANALYSIS

### Import Libraries


```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
```

### Import Raw Aata


```python
df = pd.read_csv("C:/users/dell/Downloads/BlinkIT Grocery Data.csv")
```

### Sample Data


```python
df.head(20)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Item Fat Content</th>
      <th>Item Identifier</th>
      <th>Item Type</th>
      <th>Outlet Establishment Year</th>
      <th>Outlet Identifier</th>
      <th>Outlet Location Type</th>
      <th>Outlet Size</th>
      <th>Outlet Type</th>
      <th>Item Visibility</th>
      <th>Item Weight</th>
      <th>Sales</th>
      <th>Rating</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Regular</td>
      <td>FDX32</td>
      <td>Fruits and Vegetables</td>
      <td>2012</td>
      <td>OUT049</td>
      <td>Tier 1</td>
      <td>Medium</td>
      <td>Supermarket Type1</td>
      <td>0.100014</td>
      <td>15.10</td>
      <td>145.4786</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Low Fat</td>
      <td>NCB42</td>
      <td>Health and Hygiene</td>
      <td>2022</td>
      <td>OUT018</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type2</td>
      <td>0.008596</td>
      <td>11.80</td>
      <td>115.3492</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Regular</td>
      <td>FDR28</td>
      <td>Frozen Foods</td>
      <td>2016</td>
      <td>OUT046</td>
      <td>Tier 1</td>
      <td>Small</td>
      <td>Supermarket Type1</td>
      <td>0.025896</td>
      <td>13.85</td>
      <td>165.0210</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Regular</td>
      <td>FDL50</td>
      <td>Canned</td>
      <td>2014</td>
      <td>OUT013</td>
      <td>Tier 3</td>
      <td>High</td>
      <td>Supermarket Type1</td>
      <td>0.042278</td>
      <td>12.15</td>
      <td>126.5046</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Low Fat</td>
      <td>DRI25</td>
      <td>Soft Drinks</td>
      <td>2015</td>
      <td>OUT045</td>
      <td>Tier 2</td>
      <td>Small</td>
      <td>Supermarket Type1</td>
      <td>0.033970</td>
      <td>19.60</td>
      <td>55.1614</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>5</th>
      <td>low fat</td>
      <td>FDS52</td>
      <td>Frozen Foods</td>
      <td>2020</td>
      <td>OUT017</td>
      <td>Tier 2</td>
      <td>Small</td>
      <td>Supermarket Type1</td>
      <td>0.005505</td>
      <td>8.89</td>
      <td>102.4016</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>6</th>
      <td>Low Fat</td>
      <td>NCU05</td>
      <td>Health and Hygiene</td>
      <td>2011</td>
      <td>OUT010</td>
      <td>Tier 3</td>
      <td>Small</td>
      <td>Grocery Store</td>
      <td>0.098312</td>
      <td>11.80</td>
      <td>81.4618</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>7</th>
      <td>Low Fat</td>
      <td>NCD30</td>
      <td>Household</td>
      <td>2015</td>
      <td>OUT045</td>
      <td>Tier 2</td>
      <td>Small</td>
      <td>Supermarket Type1</td>
      <td>0.026904</td>
      <td>19.70</td>
      <td>96.0726</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>8</th>
      <td>Low Fat</td>
      <td>FDW20</td>
      <td>Fruits and Vegetables</td>
      <td>2014</td>
      <td>OUT013</td>
      <td>Tier 3</td>
      <td>High</td>
      <td>Supermarket Type1</td>
      <td>0.024129</td>
      <td>20.75</td>
      <td>124.1730</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>9</th>
      <td>Low Fat</td>
      <td>FDX25</td>
      <td>Canned</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.101562</td>
      <td>NaN</td>
      <td>181.9292</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>10</th>
      <td>LF</td>
      <td>FDX21</td>
      <td>Snack Foods</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.084555</td>
      <td>NaN</td>
      <td>109.8912</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>11</th>
      <td>Low Fat</td>
      <td>NCU41</td>
      <td>Health and Hygiene</td>
      <td>2017</td>
      <td>OUT035</td>
      <td>Tier 2</td>
      <td>Small</td>
      <td>Supermarket Type1</td>
      <td>0.052045</td>
      <td>18.85</td>
      <td>192.1846</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>12</th>
      <td>Low Fat</td>
      <td>FDL20</td>
      <td>Fruits and Vegetables</td>
      <td>2022</td>
      <td>OUT018</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type2</td>
      <td>0.128938</td>
      <td>17.10</td>
      <td>112.3886</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>13</th>
      <td>Low Fat</td>
      <td>NCR54</td>
      <td>Household</td>
      <td>2014</td>
      <td>OUT013</td>
      <td>Tier 3</td>
      <td>High</td>
      <td>Supermarket Type1</td>
      <td>0.090487</td>
      <td>16.35</td>
      <td>195.2110</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>14</th>
      <td>Low Fat</td>
      <td>FDH19</td>
      <td>Meat</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.032928</td>
      <td>NaN</td>
      <td>173.1738</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>15</th>
      <td>Regular</td>
      <td>FDB57</td>
      <td>Fruits and Vegetables</td>
      <td>2017</td>
      <td>OUT035</td>
      <td>Tier 2</td>
      <td>Small</td>
      <td>Supermarket Type1</td>
      <td>0.018802</td>
      <td>20.25</td>
      <td>222.1772</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>16</th>
      <td>Low Fat</td>
      <td>FDO23</td>
      <td>Breads</td>
      <td>2022</td>
      <td>OUT018</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type2</td>
      <td>0.147024</td>
      <td>17.85</td>
      <td>93.7436</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>17</th>
      <td>Low Fat</td>
      <td>NCB07</td>
      <td>Household</td>
      <td>2012</td>
      <td>OUT049</td>
      <td>Tier 1</td>
      <td>Medium</td>
      <td>Supermarket Type1</td>
      <td>0.077628</td>
      <td>19.20</td>
      <td>197.6110</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>18</th>
      <td>Low Fat</td>
      <td>FDJ56</td>
      <td>Fruits and Vegetables</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.182515</td>
      <td>NaN</td>
      <td>98.7700</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>19</th>
      <td>Low Fat</td>
      <td>DRN47</td>
      <td>Hard Drinks</td>
      <td>2022</td>
      <td>OUT018</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type2</td>
      <td>0.016895</td>
      <td>12.10</td>
      <td>178.5660</td>
      <td>5.0</td>
    </tr>
  </tbody>
</table>
</div>




```python
df.tail(10)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Item Fat Content</th>
      <th>Item Identifier</th>
      <th>Item Type</th>
      <th>Outlet Establishment Year</th>
      <th>Outlet Identifier</th>
      <th>Outlet Location Type</th>
      <th>Outlet Size</th>
      <th>Outlet Type</th>
      <th>Item Visibility</th>
      <th>Item Weight</th>
      <th>Sales</th>
      <th>Rating</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>8513</th>
      <td>Regular</td>
      <td>DRY23</td>
      <td>Soft Drinks</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.108568</td>
      <td>NaN</td>
      <td>42.9112</td>
      <td>4.0</td>
    </tr>
    <tr>
      <th>8514</th>
      <td>low fat</td>
      <td>FDA11</td>
      <td>Baking Goods</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.043029</td>
      <td>NaN</td>
      <td>94.7436</td>
      <td>4.0</td>
    </tr>
    <tr>
      <th>8515</th>
      <td>low fat</td>
      <td>FDK38</td>
      <td>Canned</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.053032</td>
      <td>NaN</td>
      <td>149.1734</td>
      <td>4.0</td>
    </tr>
    <tr>
      <th>8516</th>
      <td>low fat</td>
      <td>FDO38</td>
      <td>Canned</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.072486</td>
      <td>NaN</td>
      <td>78.9986</td>
      <td>4.0</td>
    </tr>
    <tr>
      <th>8517</th>
      <td>low fat</td>
      <td>FDG32</td>
      <td>Fruits and Vegetables</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.175143</td>
      <td>NaN</td>
      <td>222.3772</td>
      <td>4.0</td>
    </tr>
    <tr>
      <th>8518</th>
      <td>low fat</td>
      <td>NCT53</td>
      <td>Health and Hygiene</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.000000</td>
      <td>NaN</td>
      <td>164.5526</td>
      <td>4.0</td>
    </tr>
    <tr>
      <th>8519</th>
      <td>low fat</td>
      <td>FDN09</td>
      <td>Snack Foods</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.034706</td>
      <td>NaN</td>
      <td>241.6828</td>
      <td>4.0</td>
    </tr>
    <tr>
      <th>8520</th>
      <td>low fat</td>
      <td>DRE13</td>
      <td>Soft Drinks</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.027571</td>
      <td>NaN</td>
      <td>86.6198</td>
      <td>4.0</td>
    </tr>
    <tr>
      <th>8521</th>
      <td>reg</td>
      <td>FDT50</td>
      <td>Dairy</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.107715</td>
      <td>NaN</td>
      <td>97.8752</td>
      <td>4.0</td>
    </tr>
    <tr>
      <th>8522</th>
      <td>reg</td>
      <td>FDM58</td>
      <td>Snack Foods</td>
      <td>2018</td>
      <td>OUT027</td>
      <td>Tier 3</td>
      <td>Medium</td>
      <td>Supermarket Type3</td>
      <td>0.000000</td>
      <td>NaN</td>
      <td>112.2544</td>
      <td>4.0</td>
    </tr>
  </tbody>
</table>
</div>



### Size of Data


```python
df.shape
```




    (8523, 12)




```python
print("Size of Data:",df.shape)
```

    Size of Data: (8523, 12)
    

### Field Information


```python
df.columns
```




    Index(['Item Fat Content', 'Item Identifier', 'Item Type',
           'Outlet Establishment Year', 'Outlet Identifier',
           'Outlet Location Type', 'Outlet Size', 'Outlet Type', 'Item Visibility',
           'Item Weight', 'Sales', 'Rating'],
          dtype='object')



### Data Types


```python
df.dtypes
```




    Item Fat Content              object
    Item Identifier               object
    Item Type                     object
    Outlet Establishment Year      int64
    Outlet Identifier             object
    Outlet Location Type          object
    Outlet Size                   object
    Outlet Type                   object
    Item Visibility              float64
    Item Weight                  float64
    Sales                        float64
    Rating                       float64
    dtype: object



### Data Cleaning



```python
print (df['Item Fat Content'].unique())
```

    ['Regular' 'Low Fat' 'low fat' 'LF' 'reg']
    


```python
df['Item Fat Content'] = df['Item Fat Content'].replace({'LF':'Low Fat',
                                                         'low fat':'Low Fat',
                                                         'reg':'Regular'})
```


```python
print (df['Item Fat Content'].unique())
```

    ['Regular' 'Low Fat']
    

### KPI,s Requirements



```python
#Total Sales
total_sales = df['Sales'].sum()

#Average Sales
Avg_sales = df['Sales'].mean()

#No of items sold
No_of_items_sold = df['Sales'].count()

#Average Rating
Avg_rating = df['Rating'].mean()

#Display

print(f"Total Sales: ${total_sales:,.1f}")
print(f"Avg Sales: ${Avg_sales:,.1f}")
print(f"No of items sold: {No_of_items_sold:,.1f}")
print(f"Avg Rating: {Avg_rating:,.1f}")
```

    Total Sales: $1,201,681.5
    Avg Sales: $141.0
    No of items sold: 8,523.0
    Avg Rating: 4.0
    

### Charts Requirements


#### Total Sales by Fat Content


```python
sales_by_fat = df.groupby('Item Fat Content')['Sales'].sum()
plt.pie(sales_by_fat, labels = sales_by_fat.index,
                        autopct = '%.1f%%',
                        startangle = 90)
plt.title('Sales by Fat Content')
plt.axis('equal')
plt.show()
```


    
![png](<img width="515" height="409" alt="output_23_0" src="https://github.com/user-attachments/assets/b32bacf8-8e5a-48c6-a66d-a8926f9f6b03" />
)
    


#### Total Sales by Item Type


```python
sales_by_type = df.groupby('Item Type')['Sales'].sum().sort_values(ascending=False)
plt.figure(figsize=(10,6))
bars = plt.bar(sales_by_type.index, sales_by_type.values)
plt.xticks(rotation=-90)
plt.xlabel('Item type')
plt.ylabel('Total Sales')
plt.title('Total Sales by Item Type')

for bar in bars:
    plt.text(bar.get_x() + bar.get_width() / 2, bar.get_height(),
             f'{bar.get_height():,.0f}', ha='center', va='bottom', fontsize =8)
plt.tight_layout()
plt.show()
```


    
![png](<img width="989" height="590" alt="output_25_0" src="https://github.com/user-attachments/assets/697303b7-9542-41cc-8228-296bb7627a0d" />
)
    


#### Fat Content by Outlet by Total Sales


```python
grouped = df.groupby(['Outlet Location Type', 'Item Fat Content'])['Sales'].sum().unstack()
grouped = grouped[['Regular', 'Low Fat']]
ax = grouped.plot(kind='bar', figsize=(8,5), title = 'Outlet Tier by Item fat Content')
plt.xlabel('Outlet Location tier')
plt.ylabel('Total Sales')
plt.legend(title='Item Fat Content')
plt.tight_layout()
plt.show()
```


    
![png](<img width="790" height="490" alt="output_27_0" src="https://github.com/user-attachments/assets/1becab9d-440a-4474-8382-d651f278dc2b" />
)
    


#### Total Sales by Outlet Establishment


```python
sales_by_year = df.groupby('Outlet Establishment Year')['Sales'].sum().sort_index()
plt.figure(figsize=(9,5))
plt.plot(sales_by_year.index,sales_by_year.values, marker = 'o', linestyle='-')
plt.xlabel('Outlet Establishment Year')
plt.ylabel('total Sales')
plt.title('Outlet Establishment')
for x, y in zip(sales_by_year.index, sales_by_year.values):
    plt.text(x,y,f'{y:,.0f}', ha = 'center', va='bottom', fontsize=8)
plt.tight_layout
plt.show()

```


    
![png](<img width="800" height="468" alt="output_29_0" src="https://github.com/user-attachments/assets/4f5ef2aa-905a-4d38-9d4e-73a7ef597a32" />
)
    


#### Sales by Outlet Size


```python
sales_by_size = df.groupby('Outlet Size')['Sales'].sum()
plt.figure(figsize=(4,4))
plt.pie(sales_by_size, labels=sales_by_size.index, autopct = '%1.1f%%', startangle=90)
plt.title('Outlet Size')
plt.tight_layout()
plt.show()
```


    
![png](<img width="374" height="390" alt="output_31_0" src="https://github.com/user-attachments/assets/901783fe-391c-4f5a-af8e-21a413eda672" />
)
    


#### Sales by Outlet Locations


```python
sales_by_location = df.groupby('Outlet Location Type')['Sales'].sum().reset_index()
sales_by_location = sales_by_location.sort_values('Sales', ascending = False)
plt.figure(figsize = (8,3))  ## smaller height, enough width
ax = sns.barplot(x='Sales', y='Outlet Location Type', data = sales_by_location)
plt.title('Total Sales by Outlet Location Type')
plt.xlabel('Total Sales')
plt.ylabel('Outlet Location Type')
plt.tight_layout()
plt.show()
```


    
![png](<img width="790" height="290" alt="output_33_0" src="https://github.com/user-attachments/assets/32af4bb6-791c-4b0f-a2f0-ed36e798c1ca" />
)
    



```python

```
