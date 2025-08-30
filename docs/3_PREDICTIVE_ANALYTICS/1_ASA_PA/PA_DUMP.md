# **Data Exploration**

## Data Types

For the purposes of this exam, there are only three types of data:

1. Continuous (Running numbers)
2. Counts (Whole numbers)
3. Factors (Fixed set of values - Numeric or text)

!!! Warning

    Notice that there are NO free text variables. Any text related field is assumed to be part of a factor.  

The possible values of a factor are known as its **Levels**. For simplicity, they can also be expressed as integers - but the difference between them and counts are that factors have an **upper limit**.

Both Continuous and Count data can be transformed into Factors by **grouping** them into **Bins**:

* Factor Level 1: 0-10
* Factor Level 2: 11-20
* Factor Level 3: 20 and above

<—- Insert Image —>

Cont and count are factual, just numbers so nothing much to say but factors can change depending on the analyst
Dimensionality (Quantity) - How many levels are there in the factor
Granularity (Quality) - How distinct are the levels?
Dimensionality can always be used to compare but granularity must be the same rning

## **Data Exploration**

### **Univariate Analysis**

The following summary metrics can be used when analyzing one variable at a time:

<center>

| Metrics | Continuous | Count | Factors
| Mean | Y | Y | N |
| Variance | Y | Y | N |
| Quantile | Y | Y | N |
| Frequency | N | Y | Y

</center>

Most of the above is intuitive. The reason why frequency is not applicable for continuous data is that there are infinitely many possibilities, thus calculating the frequency for each is impractical and not meaningful.

!!! Warning

    The same argument can be made for Count data, though there tends to be a smaller range of Counts which makes it more realistic.

Single variables can also be visualized using any of the following:

* Bar Charts - Frequency (Count, Factor)
* Histograms - Binned Frequency (Continuous)
* Boxplots - Quantile (Continuous, Count)

Similar to before, bar charts are not suited for continuous data given the infinitely many possibilities - Histograms are a much better fit.

    
Weird >> Multiple peaks, multimodal

Skewness as a metric

### **Bivariate Analysis**

The appropriateness of bivariate summary metrics depend on the combination of the type of variables:

Correlation is commonly used for the following for pairs:

* Continuous & Continuous
* Count & Count
* Continuous & Count

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