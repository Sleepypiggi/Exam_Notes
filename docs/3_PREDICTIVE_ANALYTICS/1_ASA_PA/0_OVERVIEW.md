# **Predictive Analytics**

The focus on this exam is on the **application of the theory** covered in exam SRM to solve a real-world business problem. The exam is fully written, thus **communication** is also a big part of the exam. Thus, this set of notes will only cover content **new to PA**, mainly covering problem solving and data handling. Kindly refer to the exam SRM section for all theory related content.

## **Business Context**

The exam will involve a short write-up to **explain the business problem**. Generally speaking, the core problem can be categorized as one of the following:

* **Descriptive Analytics**: What happened in the **past**; explaining **trends and relationships** between variables
* **Predictive Analytics**: What will happen in the **future**; making accurate **predictions**
* **Prescriptive Analytics**: **Impact** of certain actions; identifying the **best course of action**

!!! Tip

    The questions in the exam WILL make reference to the business context to some extent, thus constantly make reference back to the preamble to ensure key information is not missed.

!!! Warning

    Although the name of the exam is "Predictive Analytics", the exam can focus on **any type of anlytics**. It is common for different parts of the question to focus on different types of analytics, thus do NOT make any assumptions.

Every exam will also come with a **dataset** that accompanies the business problem. For recent exams, the actual dataset is no longer given, only a **Data Dictionary** that summarizes the following for each variable:

1. Name
2. Description - business specific context is provided here
3. Type
4. Numeric Range or Factor Levels

<!-- Obtained from SOA 202504 PA Exam -->
![DATA_DICTIONARY](Assets/0_OVERVIEW.md/DATA_DICTIONARY.png){.center}

!!! Note

    For the purposes of this exam, it is assumed that only **structured** data will be used; data that can be fit into a **tabular arrangement** and hence easily manipulated. The opposite would be **Unstructured** data that CANNOT be placed into a table (EG. Image, Audio of Free Text) data. Although these data types provide **more insight**, they are much more **resource intensive** to process and require more **complicated models** to use.

## **Data Adequacy**

### **Data Collection**

For all statistical analyses, it is important that the data collected is:

1. **Representative** of the underlying population - Use proper **sampling methods**
2. **Indicative** of future behaviour - Use data that has been collected **recently**; exclude observations that were impacted by **one-off events** (EG. COVID19)

!!! Note

    It is important that both the training and test set are made up of similar compositions. If the training set's composition is significantly different from the test set's, then it will produce an effect **similar to overfitting** where the model would be fit to the mix of the training data, which does not generalize well to the test data.

    Thus, it is important to ensure that the **composition between the two sets are similar** (especially for key variables), which will ensure that the resulting training and test estimates are more reliable. 

There are two main sampling methods that should be used:

* **Random Sampling**: Randomly draw observations from the population without replacement
* **Stratified Sampling**:
    * Systematically divide the population into **non-overlapping strata** (groups)
    * **Randomly sample** a **proportionate number** of observations from each strata based on size
    * **Combine** all of them to form the stratified samples

In order to divide the population into groups, **stratification variable(s)** must be identified; the variables to split the population by. For instance, if both variable A and B are chosen which have 10 and 4 levels respectively, then **40 levels** are needed to capture **all possible combinations** of the two (10*4).

!!! Tip

    The key advantage of random sampling is that each observation has an **equal chance** of getting drawn, thus tends to result in an **unbiased sample**.

    This is in contrast to another common method known as **Systematic Sampling**, which draws observations based on a **set pattern** (EG. Every n-th observation). While it ensures that the sample is **evenly spread throughout the population**, it is still **prone to bias** as the underlying data might have a **periodic pattern** that is not known.

    Nonetheless, it still remains a valid sampling method. It can also be combined with Stratified Sampling, where systematic sampling is used to sample within each strata.

A potential problem during the data collection process is **Sampling Bias**, which is unintentionally introducing bias via the means of collecting the sample:
    
<!-- Obtained from Scribbr -->
![SAMPLING_BIAS](Assets/0_OVERVIEW.md/SAMPLING_BIAS.png){.center}

!!! Note

    Other considerations when collecting data:

    * **Personally Identifiable Information** (PII): Should only be collected **within terms and conditions**; should be **anonymized** and sufficiently **secured**
    * **Sensitive Information**: Should not collect variables (or proxies of them) that may lead to **unfair discrimination** (EG. Race, Disability status etc)

### **Data Adequacy**

The first aspect to consider is the **Scope** of the entire suite of variables provided:

* **Amount** - Ideally a large amount provided
* **Type** - Ideally both Numeric & Factor variables are provided
* **Granularity** - Ideally should have sufficient granularity (EG. Numeric - Decimal places, Factor - Number of levels)
* Must have variables **key to the business problem**; call out potentially missing ones
* Any possible **Target Leakages** - variables that provide information about the target that would **otherwise not be available** during actual deployment of the model

!!! Note

    Target leakage typically occurs for variables that are *generated* at the **same time or after** the target variable. Note that this refers to the GENERATION of the data, NOT the collection.

    If included, these variables would **artifically boost model performance** as they would not be present in practice. Thus, it is best NOT to collect such variables at all.

    For instance, if the model is aiming to predict whether a patient would be re-admitted, then using a variable such as "blood sugar level during next visit" would be a case of target leakage because the variable would only have values for patients who ARE re-admitted.

Another aspect to consider the **reasonableness** of each individual variable:

* Are they any outliers? Compare the mean relative to the minimum or maximum values
* Are there any missing values? Observe the count of missing values

After identifying the problems, the following actions can be taken:

* **Affects few observations**: Remove the affected observations
* **Affects many observations**: Remove the entire variable

Trimming >> Remove top X
Null is missing object
NA is missing observation

### **Data Exploration**

The data should be explored to gain a better understanding of it. There are two primary methods to do so:

<!-- Self made -->
![DATA_EXPLORATION_METHODS](Assets/0_OVERVIEW.md/DATA_EXPLORATION_METHODS.png){.center}

For summary statistics, the following statistics are usually provided as they are the output of the `summary` function in `R`:

* **Numeric**: Various statistics (not limited to the ones shown below)
* **Factor**: Count for each level

<!-- Obtained from Coaching Actuaries -->
![SUMMARY_R](Assets/0_OVERVIEW.md/SUMMARY_R.png){.center}

Graph dependent on human eye
* Easier compare length than angle, thus bar chart better than pie chart
* Easier compare length than area, thus bar chart better than pie chart
* Snapshot vs Over time
* Missing what its missing; no perfect visual

+ve/-ve
Skewness
Number of modes

Plots
add Count

Correlation must exist across all levels (not just up till certain point)

Interaction >> Faceting
Target vs A split by B
Target B1 // A123 // B2 // A123
A123 vs target has effect but effect changes between B1 and B2

Target vs Predictor >> To find potential variables (Vary across all levels or values - but must be intuitive, cannot l3 have effect but l4 dont have)
Predictor vs Predictor >> To identify potential collinearity

<!-- Obtained from ACTEX PA Cheat Sheet -->
![INTERACTION_TOOLS](Assets/0_OVERVIEW.md/INTERACTION_TOOLS.png){.center}

!!! Warning

    The reason why frequency is not applicable for numeric data is that there are infinitely many possibilities, thus calculating the frequency for each is impractical and not meaningful.

!!! Tip

    For Bivariate analysis, when there are categorical variables involved, there are three variations that can be applied:

    * **Stacked**: Stacked column
    * **Filled**: 100% stacked column (Compare **across**)
    * **Dodged**: Clustered column (Compare **within**)

!!! Tip

    To split is to **add another visual** to the current chart, each representing a different category:

    <!-- Obtained from Stackoverflow -->    
    ![SPLITTING](Assets/0_OVERVIEW.md/SPLITTING.png){.center}

    To facet is to **create multiples** of the current chart, each filtered by a different category:

    <!-- Obtained from Stackoverflow -->
    ![FACETING](Assets/0_OVERVIEW.md/FACETING.png){.center}

!!! Note

    Numeric data should be **treated** as categorical when:

    * There are only a small number of distinct values
    * They are merely numeric labels with no order (EG. Group number)
    * They have a **complex relationship** with the target (Models have more flexibility to capture the relationship when it is categorical)

    Numeric data can also be **transformed** into Categorical ones by **grouping** them into **Bins**:

    * Factor Level 1: 0-10
    * Factor Level 2: 11-20
    * Factor Level 3: 20 and above

### **Data Transformation**

The main issue for numeric variables is **Skewness**, often due to outliers. If the outliers are due to a legitimate error, then they should be r**emoved**. Otherwise, it is possible to use the **concave transformations** (Log & Squareroot) to reduce the skewness.

The main issue for categorical variables is **high dimensionality** (too many levels) and **sparseness** (too few observations in certain levels). Both of this can be solved by **combining similar levels** together while ensuring that the resulting new levels properly split the data. This often requires **contextual knowledge** of the data.

This process of transforming the original variables into a more useful format is a form of feature generation which helps to improve interpretability. 

Combine levels with few counts. Not reliable to use them anyway
Drop factor levels that are overwhelmingly dominated by one count -> No point, not going to get much predictive information (No constant)
If transforming factors or combining, the resulting factor should have fewer counts (simplification, otherwise more complicated)

Numeric vs Factor
Factor > Can only be used to predict those years
Numeric > Can extrapolate

Relevelling factors to highest etc >> Make more meaningful
Binarizaton > Can drop independent; remaining automatically combined (Not intuitive)

Scaling numeric variable >> Doesnt solve skewness
Log or squareroot transform >> To remove outliers, fix hetero, or linearize

## **Model Selection & Evaluation**

## Next Steps

* **Hypotheses**: Use prior knowledge to develop a **testable hypotheses** that addresses the concern
* **Metrics**: Create **objective and measurable KPIs** that are **aligned** with the business strategy