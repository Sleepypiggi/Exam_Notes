# **Data Exploration**




Types
Continuous (Decimals)
Count (Whole Numbers)
Factors (Fixed set of values - numeric or text)

From a data analysis purpose, assumed that there are no free texts - Any text related data is a factor

Possible values are known as levels
Factors can also be represented using numbers but should not be treated as counts
Counts are free ranging, factors have a limit
Two levels then often called binary

Continuous and Count data can be transformed into count data by grouping them


Cont and count are factual, just numbers so nothing much to say but factors can change depending on the analyst
Dimensionality (Quantity) - How many levels are there in the factor
Granularity (Quality) - How distinct are the levels?
Dimensionality can always be used to compare but granularity must be the same rning

## **Exploratory Data Analysis**

Summary of the dataset

Univariate Analysis
Analyzing only one variable


Summary metrics | Continuous | Count | Factors
Mean
Variance
Quantile
Frequency

Not meaningful to have frequency for continuous data because there are simply too many possibilities

Conversely, Frequency is the only thing that can be summarized for factors

Don’t agree that count can use frequency unless it’s converted to a factor due to the smaller but still endless possibilities

Histogram - Bins (Grouped into equal length)
Bar chart - No Bins 
Both show frequwncy
Each bin one bar
If continuous, too many bars and each bar is small >> not meaningful
Weird >> Multiple peaks, multimodal

Boxplot
Skewness as a metric

Bivariate
Count - Count
Continuous - Continuius
Count - Continuous
Correlation
Measure of linear relationship
Indication of the strength of predictive pwoer

Factor factor 
Contingency table - frequency

Factor - Numeric
Summary by level
Split the Univariate factors into
Can analyse multiple at a time, not limited to just two

Order of results between two
Does the order make sense, if not something may be up >> could be missing variable for analysis diamond example
Or just data issues

More outliers than usual
Smaller dataset > Don’t have as many smaller values (use phrasing from diamond)



Scatterplot >> Slope relationship
Steep is good, but too steep is bad

binarization


Side by side plots

Compare relative distribution 
Overall got more X than Y
But for L3, got more Y than X


Data transformation
Missing data
A few entries missing >> Remove those entry
Many entries missing >> Remove those cokumns

Errenous values
Sense check >> Minimum, maximum values
Outliers >> Even among outliers, there can be outliers
Likely but not conclusive
Reasonablesness of outliers >> Plot against another variable to see if there is an explanation or another round of sense check

Log transform
For right skew

Resulting histogram more ovfious, not evident in the past
Multiple peaks >> indication of multiple laters

seed
stratified sampling
similar value suggests that the stratification was successful