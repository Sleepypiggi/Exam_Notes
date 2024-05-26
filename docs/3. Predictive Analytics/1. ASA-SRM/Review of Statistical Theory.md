# **Review of Statistical Theory**

This section assumes some basic knowledge on **Random Variables**, which can be found under another set of notes covering a [Review of Probability Theory](../../2. Actuarial Mathematics/ASA-FAMS/1. Review of Probability Theory.md).

## **Overview of Statistics**

Statistics is a discipline revolving around data.

A **Population** refers to the *theoretical* set of **all possible** data of the event of interest. The goal of statistics is to determine certain attributes that **summarizes or describes** the population, known as **Parameters**.

However, it is impossible to study the entire population at once, thus a **subset of the population** is studied instead, known as the **Sample**. Attributes that summarize or describe the sample are known as **Statistics**.

Ideally, the sample is **representative** of the population, which means that findings from the sample can be applied to the population as a whole. This means that the sample statistics can be used **estimate** population parameters.

We distinguish between the two (when they have the same notation) through the **Hat accent** (^) - Population Parameters are their written without the hat ($x$) while their corresponding sample statistics are written with the hat ($\hat{x}$).

## **Common Sample Statistics**

The **Mean** is the average of the population.

<!-- Central Tendency -->

<center>

| Population Mean | Sample Mean |
| :-: | :-: |
| $\mu = \sum\limits_{i=i}^n x_i * p(x_i)$ | $\bar{x} = \frac{1}{n} \sum\limits_{i=i}^n x_i$ |

</center>

Mean is a measure of centrality
But if there are outliers, then median is better

The **Variance** measures the spread of values about the mean. However, the units of Variance are unintuitive, thus we consider the **Standard Deviation** for more practical purposes, which is the **square root of the variance**.

<center>

| Population Variance | Sample Variance |
| :-: | :-: |
| $\sigma^2 = \sum\limits_{i=i}^n (x_i - \mu)^2 * p(x_i)$ | $s^2 = \frac{1}{n-1} \sum\limits_{i=i}^n (x_i - \bar{x})^2$ |

</center>

<!--Bessel's correction-->

**Covariance** is a measure of the **linear relationship** between two variables:

* **Positive Covariance** - Variables move in the **same direction**
* **Negative Covariance** - Variables move in **opposite directions**

<center>

| Population Covariance | Sample Covariance |
| :-: | :-: |
| $\sigma_{x, y} = \mu_{xy} - \mu_x \mu_y$ | $\hat{\sigma}_{x, y} = \frac{1}{n-1} \sum\limits_{i=i}^n (x_i - \bar{x}) * (y_i - \bar{y})$ |

</center>

However, there are two issues with Covariance - the units are unintuitive (similar to variance) and there is no benchmark as to what constitutes a strong/weak relationship. Thus, the **Correlation** is an adjusted measure of the relationship **between -1 and 1**.

<center>

| Population Correlation | Sample Correlation |
| :-: | :-: |
| $\rho = \frac{\sigma_{x,y}}{\sigma_x * \sigma_y}$ | $r = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sum(x_i - \bar{x} \sum(y_i - \bar{y})}$ |

</center>

Properties of Estimators
Biased
Consistent
Efficient
Degrees of freedom

## **Sampling Distribution**

Whenever a sample is drawn from a population and a statistic is calculated, it is known as a **Point Estimate**.

Due to measurement error, a different sample would be drawn each time, thus leading to a **different point estimate**. If this process were to be repeated a large number times, the **probability distribution** of the resulting point estimates is known as the **Sampling Distribution** of the statistic.

There is **no rule** surrounding the sampling distribution - it depends on the distribution of the population, statistic being measured, sampling method etc.

The standard deviation of this sampling distribution is known as the **Standard Error** of the statistic:

$$
\sigma_{\theta} = \sqrt {\sigma^2_{\theta}}
$$

A special case is the **Sample Mean**. If the population is normally distributed, then it is normally distributed as well. Regardless of the population distribution, it is also approximately normally distributed through the **Central Limit Theorem** or **Law of Large Numbers**.

$$
\bar{x} \sim N\left(\mu, \frac{\sigma^2}{n}\right)
$$

Following that, we can compute the standard error:

$$
\sigma_{\bar{x}} = \sqrt \frac{\sigma^2_{\bar{x}}}{n} = \frac{\sigma}{\sqrt{n}}
$$

However, the population variance is usually unknown. Thus, it can be approximated using the Sample Variance, which is an unbiased estimator for it. The result is known as an **Estimate for the Standard Error**:

$$
\hat{\sigma}_{\bar{x}} = \sqrt \frac{s^2}{n} = \frac{s}{\sqrt{n}}
$$

> Note that only the sample variance is an unbiased estimator for the population variance. Although it may look like it, the sample SD is NOT an unbiased estimator for the population SD.

## **Confidence Interval**

Given that there is only one true value for the population parameter and a whole distribution of estimators, it is unlikely that a point estimate will be equal to the population parameter. Thus, instead of a point estimate, a range of estimates is used, known as a **Confidence Interval**.

The interval is made a chosen **Confidence Level** which represents the **proportion of confidence intervals that will contain the true value**. In other words, if a large number of confidence intervals constructed in the same manner were to be made, $(1-\alpha)%$ of them would contain the true value.

$$
P(- \text{Margin of Error} < \theta < \text{Margin of Error}) = 1 - \alpha
$$

The **Margin of Error** represents the range of values on *either side* of the point estimate that the true value could lie. For instance, for a 95% confidence interval, the confidence lies within the 0.025 and 0.975 percentile of the sampling distribution.

The margin of error can be calculated by finding the **corresponding values** of the sampling distribution at these percentiles.

Consider the 95% confidence interval for the **Sample Mean**, which is normally distributed. For convenience, it is usually normalized such that it will become a **Standard Normal Distribution**:

$$
\begin{aligned}
P(-1.96 < \frac{\bar{x} - \mu}{\frac{\sigma}{\sqrt n}} < 1.96) &= 0.95 \\
P(\bar{x} - 1.96 \frac{\sigma}{\sqrt n} < \mu < \bar{x} + 1.96 \frac{\sigma}{\sqrt n}) &= 0.95 \\
\end{aligned}
$$

$$
\therefore \text{Margin of Error} = \bar{x} + Z_{\frac{\alpha}{2}} * \frac{\sigma}{\sqrt n}
$$

<!-- Obtained from Analyst Prep -->
![95% Confidence Interval](Assets/3.%20Review%20of%20Statistical%20Theory.md/Confidence%20Interval.png)

## **Hypothesis Testing**

**Hypothesis Testing** is a formal method of making inferences about the population parameters based on the sample statistic.

It starts with a **Hypothesis** which is a conjecture about the population parameters:

* **Null Hypothesis** - What is currently believed to be true
* **Alternative Hypothesis** - What is to be proven

A **Test Statistic** is then calculated, which would quantify the behaviour of population such that it would **distinguish** the null and alternative hypothesis.

*Assuming the Null Hypothesis is true*, the sampling distribution of the test statistic is determined. From the sampling distribution, the **p-value** is calculated, which is the **probability** of observing the **calculated sample statistic or more extreme**.

If the **p-value is smaller** than a pre-determined level of **Statistical Significance** ($\alpha$), then the test is "successful" and the null hypothesis is rejected. If not, then the test "fails" and the null is not rejected.

> Note that it rejecting the null hypothesis does NOT mean that the alternative hypothesis is accepted - EG. Rejected then hypothesis of a large paw print being from a bear does not mean that it is from Bigfoot.
>
> Thus, the hypotheses are usually constructed such that the two hypothesis are **complementary**, such that rejecting the null allows acceptance of the alternative, leading to a definitive insight.

In layman terms, a hypothesis test is a **test of extremeness**. Assuming the null hypothesis is true, how extreme (low probability) is the observed sample? If the p-value is sufficiently low, it means that the sample is rare - it could be due to **pure chance** or that it is **actually not rare** because the null is not true.

We distinguish between the two mathematically through $\alpha$. It is the **probability of a False Positive** - that the result obtained was by pure chance. It is typically set at 5%, which means that 5% of all statistics calculated are expected to be extreme under the null. Thus, if the p-value of the sample is smaller than $\alpha$, then it is likely that the observation was **not due to chance but instead because the null was false**.

<!-- Obtained from Zscore geek -->
![Hypothesis Testing](Assets/3.%20Review%20of%20Statistical%20Theory.md/Hypothesis%20Testing.png){.center}

Alternatively, instead of comparing p-value to $alpha$, the test-statistic and the **corresponding value** of $\alpha$ on the sampling distribution can be used. It is known as the **Critical Value**, which represents the boundary of 

<center>

| Reject Null | Do not Reject Null |
| :-: | :-: |
| p-value smaller than $\alpha$ | p-value smaller than $\alpha$ |
| test-statistic *larger* than critical value | test-statistic *smaller* than critical value |

</center>

Let the random variable $T$ denote the test statistics. There are many different kinds of test statistics depending on the distribution and what is being investigated.

### **Z-statistic**

The most simple test statistic involve the **Sample Mean**, which is normally distributed:

$$
T = \frac{\bar{x} - \mu}{\frac{\sigma}{\sqrt{n}}}
$$

If the **population variance is known**, then the test statistic has a **Standard Normal Distribution** and thus the test-statistic is known as a **Z-Statistic**.

$$
\begin{aligned}
T
&= \frac{\bar{x} - \mu}{\sigma} * \sqrt n \\
&= Z * \sqrt n \\
\therefore T &\sim N(0,1)
\end{aligned}
$$

### **t-statistic**

If the population variance is unknown, then it will be approximated by the **Sample Variance**. Through algebraic manipulation, the test statistic can still be expressed in the form of a Z variable, but with an additional term:

$$
\begin{aligned}
T
&= \frac{\bar{x} - \mu}{\frac{s}{\sqrt{n}}} \\
&= \frac{\bar{x} - \mu}{s} * \sqrt n \\
&= \frac{\bar{x} - \mu}{\sigma} * \frac{\sigma}{s} * \sqrt n \\
&= Z\sqrt n \div \sqrt \frac{s^2}{\sigma^2} \\
&= Z\sqrt n \div \sqrt \frac{(n-1)s^2}{(n-1)\sigma^2} \\
&= Z\sqrt n \div \sqrt {\frac{(n-1)s^2}{\sigma^2} * \frac{1}{n-1}} \\
\end{aligned}
$$

The additional term can be shown to have a **Chi-Squared Distribution** of $n-1$ degrees of freedom, which by definition is the **sum** of $n-1$ independent standard normal variables:

$$
\begin{aligned}
\chi^2_n
&= Z^2 \\
&= \sum \left(\frac {\bar{x} - \mu}{\sigma}\right)^2 \\
&= \sum \left(\frac {(x_i - \bar{x}) + (\bar{x} - \mu)}{\sigma}\right)^2 \\
&= \sum \left(\frac{x_i - \bar{x}}{\sigma}\right)^2 + \sum \left(\frac{\bar{x} - \mu}{\sigma}\right)^2 \\
&= \frac{1}{\sigma^2} \sum (x_i - \bar{x})^2 + \sum Z^2 + 0 \\
&= \frac{(n-1)}{\sigma^2} \frac{\sum (x_i - \bar{x})^2}{n-1} + \chi^2_1 \\
&= \frac{(n-1)s^2}{\sigma^2} + \chi^2_1 \\
\end{aligned}
$$

$$\therefore \frac{(n-1)s^2}{\sigma^2} \sim \chi^2_{n-1}$$

Thus, the test statistic is the **ratio of a Standard Normal Variable to the squareroot of a Chi Squared Variable** (divided by its degrees of freedom). By definition, this test statistic has a **t-distribution** with the same degrees of freedom and is known as the **t-statistic**:

$$
\begin{align*}
T
&= \frac{Z}{\sqrt \frac{\chi^2_{n-1}}{n-1}} * \sqrt n \\
&= t_{n-1} * \sqrt{n} \\
\end{align*}
$$

$$\therefore T \sim t_{n-1}$$

Despite the slightly convoluted proof, the t-distribution is simply a **standard normal distribution with heavier tails**. This means that extreme values are slightly more likely, which is meant to account for the **increase in variability** due to the use of the sample variance rather than the population variance.

<!-- Obtained from Medium -->
![t-distribution](Assets/3.%20Review%20of%20Statistical%20Theory.md/t-distribution.png){.center}

### **F-statistic**

The **square of t-statisic** has an **F-Distribution**, which is defined as the **ratio of two independent chi-square variables** (divided by their respective degrees of freedom). It has two dimensions for its degree of freedom, reflecting the two chi-square variables.

$$
F_{m,n} = \frac{\frac{\chi_m}{m}}{\frac{\chi_n}{n}}
$$

The square of a t-statistic follows an F-distribution because:

1. The square of the standard normal variable in the numerator becomes a $\chi_1$ variable
2. The squareroot is removed in the denominator, becoming a $\chi_{n-1}$ over its degree of freedom

$$
\begin{aligned}
t_{n-1}^2
&= \left(\frac{Z}{\sqrt \frac{\chi^2_{n-1}}{n-1}} * \sqrt n \right)^2 \\
&= \frac{\chi_1}{\frac{\chi^2_{n-1}}{n-1}} * n \\
&= \frac{\frac{\chi_1}{1}}{\frac{\chi^2_{n-1}}{n-1}} * n \\
&= F_{1,n-1} * n
\end{aligned}
$$

$$
\therefore t_{n-1}^2 \sim F_{1, n-1}
$$

Thus, the square of the t-statistic is known as the **F-statistic**, which is usually used to test for the **equality of variance**.

## **Maximum Likelihood Estimation**

If the **population distribution is known**, there is an **alternative method of estimating** the parameters apart from calculating the corresponding sample statistics, known as **Maximum Likelihood Estimation** (MLE).

There are an infinite number of **variations of the distribution** that could have resulted in the sample, each with **different parameters**.

Technically speaking, any set of parameters could have resulted in the sample. However, the goal of MLE is to find the set of **parameters that are most likely to result in the sample**; in other words, the **probability of obtaining this sample is the highest** with this set of paramters than any other set.

The probability of obtaining the sample is known as its **Likelihood**:

$$
     L(\theta \mid x) = P_{\theta} (X = x)
$$

!!! Warning

    Likelihood functions and PMF/PDFs are often confused with one another as they involve the same expression.
    
    The key is **understanding what is given and what is random**, which results in the subtle but differing notation:

    * **PMF/PDF**: Given parameters, outcomes are random; $P_{X}(x)$
    * **Likelihood**: Given outcomes, parameters are random; $P_{\theta}(x)$

Assuming that the sample is iid, the likehood for the entire sample is the **product of the likelihood for each observation**, known as the **Likelihood Function**:

$$
    L(\theta) = \prod P_{\theta}(X = x_i)
$$

!!! Note

    For discrete distributions, $X = 0$ is a **valid observation** and thus should be considered as well.

The goal is to find the parameters that **maximizes** the likelihood function through calculus:

$$
    \frac{d}{d\theta} L(\theta) = 0
$$

In practice, especially when dealing with multiple parameters, the likelihood function is complicated to work with. Thus, a **log transformation** is often applied to simplify it, turning the **product into a summation**.

This is known as the **Log-Likelihood Function**. Since the logarithm transform is monotonic, both the likelihood and log-likelihood functions share the **same maximum**.

$$
\begin{aligned}
    \ell (\theta) &= \ln L(\theta) \\
    \therefore \frac{d}{d\theta} \ell (\theta) &= 0
\end{aligned}
$$

### **Practical Tips**

Some distributions have complicated PMF/PDFs that make working with them more complicated. Most questions will usually have **some method to simplify the likelihood function**.

The first tip is to understand that since the likelihood function will be logarithm transformed and then differentiated, **factors that contains ONLY constants can be dropped** since they will inevitably be removed later:

$$
\begin{aligned}
    L(\theta) &= a * x \\
    \ell (\theta) &= \ln a + \ln x \\
    \ell' (\theta) &= \frac{1}{x} \\
    \\
    \therefore L(\theta) \propto x
\end{aligned}
$$

The next tip is that if the parameters are **embedded in the power** of some constant, they should be combined together:

$$
\begin{aligned}
    L(\theta)
    &= a^{\theta} \cdot b^{\theta} \cdot c^{\theta} \\
    &= (a \cdot b \cdot c)^{\theta}
\end{aligned}
$$

The reverse also applies...divide power, may not be in the same term, could come from another term

However, if the above terms for some reason are **added instead of multiplied**, then a **substituition** method would be better:

$$
\begin{aligned}
    L(\theta) &= e^{-\frac{k}{100}} - \left(e^{-\frac{k}{100}} \right)^2 \\
    L(\theta) &= p - p^2
\end{aligned}
$$

!!! Note

    If multiple parameters are being estimated, then the likelihood function is **partially differentiated** to each variable instead
    
    The MLE parameters are then the **combination of parameters** that maximizes the function. 

### **Method of Moments**

An alternative method for estimating population parameters is the **Method of Moments** (MOM).

It is based on the **Law of Large Numbers**, which states that the sample mean converges to the population mean (first raw moment), given a **sufficiently large sample size**.

Thus, by **equating the sample raw moments to the population raw moments**, up to the number of parameters to estimate, we can solve for an estimate of the parameters.

!!! Note

    This process can be repeated for as many parameters there are:

    * **One Parameter**: First moments equated
    * **Two Parameters**: First & Second moment equated

    Most MLE questions will only require single parameter estimation. If two parameters are given, then there is **usually some way to simplify it**.

$$
\begin{aligned}
    E(X^k)
    &= \bar{x} \\
    &= \frac{\sum x^k_i}{n}
\end{aligned}
$$

!!! Note

    Needless to say, $\bar{x}$ represents the **average of the quantity being modelled**, NOT the number of observations.

    If there are 10 observations of 2 claims, then we must compute the number of claims as $10 \cdot 2 = 20$.

The main advantage of this method is that it is **computationally simpler** than MLE. For certain known distributions, the MOM estimate and MLE estimate are the same, thus MOM can be used as a **shortcut for MLE**.
