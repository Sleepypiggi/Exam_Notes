!!! Note

    Since the force of mortality represents the instantaneous rate of death,
    for **extremely small time intervals**, it can be used to *approximate* the probability of death in that interval:

    $$
        P(T_x \lt h) \approx h * \mu_{x}
    $$

MOVE TO CURTATE?

This result can be better expressed in the form of a probability tree:

<!-- Self Made -->
![Probability Tree](Assets/1.%20Survival%20Models.md/Probability%20Tree.png)

Thus, it can be shown through *recursion* that the probability of surviving $t$ years is equal to the **sum of the probabilities of deferred deaths** for every year after:

$$
\begin{aligned}
    S_x(1)
    &= S_x(1)F_{x+1}(1) + S_x(1)S_{x+1}(1) \\
    &= S_x(1)F_{x+1}(1) + S_x(1) [S_{x+1}(1)F_{x+2}(1) + S_{x+1}(1)S_{x+2}(1)] \\
    &= S_x(1)F_{x+1}(1) + S_x(1) S_{x+1}(1)F_{x+2}(1) + S_x(1) S_{x+1}(1)S_{x+2}(1) \\
    &= S_x(1)F_{x+1}(1) + S_x(2)F_{x+2}(1) + S_x(2)S_{x+2}(1) \\
    &= S_x(1)F_{x+1}(1) + S_x(2)F_{x+2}(1) + \dots \\
    \\
    \therefore S_x(t) &= \sum^{t}_{t = 1} S_x(t)F_{x+t}(1)
\end{aligned}
$$

Recall that the probability of surviving till a certain age is simply the probability that the person will die sometime *after* that age. The above expression solidifies this, where the probability of survival is equivalent to the **probability of dying in every possible age after**.


### **Intuitions**

Although the exam questions are mostly computational, it is good to have an understanding of how the different EPVs compare against one another to serve as a sort of "sense check" against the SULT provided to determine if the answer is in the right direction.

#### **Same Assurance**

Recall that the probability of death is an *increasing* function with age. The death benefit is **more likely to be paid out** to an older policyholder - in other words, they **receive the death benefit "sooner"** than a younger policyholder.

Thus, an older policyholder has **larger expected cashflows** that are **discounted less** (due to receiving it sooner), which results in a **higher EPV** than a younger policyholder, all else equal:

$$
\begin{aligned}
    A_{x+k} & \gt A_{x} \\
    A^{\> \> 1} _{x+k:\enclose{actuarial}{n}} & \gt A^{\> \> 1}_{x+k:\enclose{actuarial}{n}}
\end{aligned}
$$

Conversely, the probability of survival is a *decreasing* function with age. The survival benefit is **less likely to be paid out** to an older policyholder - smaller expected cashflows.

Regardless of the age of the policyholder, the survival benefit is paid at the same time (**same discounting**). Thus, since an older policyholder has **smaller expected cashflows**, it has a **lower EPV** than a younger policyholder:

$$
    {}_{n}E_{x+k} \le {}_{n}E_{x}
$$

Endowment Assurances have **both a death and survival component**, thus the comparison is a combination of the two:

* A younger policyholder is **more likely to survive** and receive the survival benefit at the end of the term (discounted more)
* An older policyholder is **more likely to die** and receive the death benefit during the term (discounted less)

Assuming that the difference in expected cashflows are *negligible*, then an older policyholder would have an **higher EPV** due to the **lower discounting**:

$$
    A_{x+k:\enclose{actuarial}{n}} \gt A_{x:\enclose{actuarial}{n}}
$$

Naturally, all else equal, assurances with a **lower interest rate are discounted less** and thus have a **higher EPV**.

> If a seperate mortality table with EPVs are given, it is likely that the question is not using an interest rate of 5%.

#### **Different Assurances**

At a **young age** where the probability of death is low, all else equal (where applicable), the EPVs of each assurance rank as follows:

1. **TA will have the smallest EPV**. Although their benefits are paid out sooner, the **expected benefits are small** as the probability of death is small.
2. **WL has the next largest EPV**. They have the same benefits as term in the short run, but have **large expected benefits in the future**. However, these large benefits are **heavily discounted**, still resuling in a small EPV.
3. **PE has the next largest EPV**. Given the high probability of survival, the **expected benefits are large**.
4. **EA has the largest EPV**. Since it is a combination of TA and PE, it is naturally the highest.

$$
\begin{aligned}
    A^{1}_{30:\enclose{actuarial}{n}} < A_{30} < {}_{n}E_{30} < A_{30:\enclose{actuarial}{n}} \\
\end{aligned}
$$

At an **old age** where the probability of death is high, all else equal (where applicable), the EPVs of each assurance rank as follows:

1. **PE will have the smallest EPV**. Given the low probability of survival, the **expected benefits are are small**.
2. **TA will have the next largest EPV**. Given the high probability of death, the **expected benefits are high**.
3. **EA will have the next largest EPV**. Since it is combination of TA and PE, it is naturally higher than both of them.
4. **WL has the largest EPV**. Given the inevitable death of the policyholder, the **expected benefits are the highest**.

$$
\begin{aligned}
    {}_{n}E_{100} < A^{1}_{100:\enclose{actuarial}{n}} < A_{100:\enclose{actuarial}{n}} < A_{100} \\
\end{aligned}
$$

As the policyholder approaches the terminal age, the EPVs tend to one another:

$$
\begin{aligned}
    x &\to \omega \\
    E(\text{PE}) &\to 0 \\
    E(\text{EA}) &\to E(\text{TA}) \\
    E(\text{TA}) &\to E(\text{WL})
\end{aligned}
$$

TA tends to WL whenever the **end of the term exceeds the terminal age** - thus the cashflows and hence EPV for both assurances become identical.

These identities are useful when there is a **starting value given**. The most common starting point is the terminal age as the EPVs can be intuitively determined since the policyholder will **inevitably die** at the end of the year:

$$
\begin{aligned}
    A_{\omega-1} &= v \\
    A^{\> \> 1}_{\omega-1:\enclose{actuarial}{n}} &= v \\
    {}_{n}E_{\omega-1} &= 0 \\
    A^{1}_{\omega-1:\enclose{actuarial}{n}} &= v
\end{aligned}
$$

### **Intuitions**

Similar to assurances, several intuitions can be made about the EPV of various annuities to serve as a sort of "sense check" against the SULT provided to determine if the answer is in the right direction.

#### **Same Annuity**

Since annuities are all contingent on the survival of the policyholder, only one case needs to be considered.

The probability of survival is a *decreasing* function with age. The benefits are **less likely to be paid out** to an older policyholder, resulting in **smaller expected cashflows**.

Since the cashflows are discounted the same amount, an older policyholder will have a **lower EPV** than a younger one:

$$
    \ddot{a}_{x+n} \lt \ddot{a}_{x}
$$

As shown previously, Annuity Dues are always smaller than Immediates as the **cashflows occur earlier** and are hence **discounted less**.

$$
    a_x < \ddot{a}_x
$$

Naturally, all else equal, annuities with a **lower interest rate are discounted less** and thus have a **higher EPV**.

#### **Different Annuities**

Since annuities are all contingent on the survival of the policyholder, the age of the policyholder for comparison does not matter.

**TA has the smallest EPV** as it can only pay for a maximum of $n$ years, while WLs and GA can pay indefinitely.

**WL is always smaller than GA** as its payments in the first $n$ years are not guaranteed; the payments after that are identical.

$$
    \ddot{a}_{x:\enclose{actuarial}{n}} < \ddot{a}_x < \ddot{a}_{\bar{x:\enclose{actuarial}{n}}}
$$

#### **Immediate VS Due**

Consider two temporary life annuity with a term of $n$ years:

* Annuity Immediate issued at age $x$
* Annuity Due issued at age $x+1$
* Both have the **same cashflows**:

<!-- Self Made -->
![Immediate VS Due Intuition](Assets/4.%20Life%20Annuities.md/Immediate%20VS%20Due%20Intuition.png){.center}

However, both of them are valued at different times:

* Annuity Immediate valued at age $x$
* Annuity Due valued at age $x+1$
* Thus, the **PV of the cashflows are NOT the same**:

<!-- Self Made -->
![Immediate VS Due Intuition PV](Assets/4.%20Life%20Annuities.md/Immediate%20VS%20Due%20Intuition%20PV.png){.center}

Thus, although they have the same cashflows, the **annuity due has a larger EPV**:

$$
\begin{aligned}
    a_{x:\enclose{actuarial}{n}} &= \sum^n_{j=1} v^j {}_{j}p_{x} \\
    \\
    \ddot{a}_{x+1:\enclose{actuarial}{n}}
    &= \sum^{n-1}_{j=0} v^j {}_{j}p_{x+1} \\
    &= \frac{1}{vp_{x}} \sum^{n-1}_{j=0} v^{j+1} {}_{j}p_{x+1} p_{x} \\
    &= \frac{1}{vp_{x}} \sum^{n-1}_{j=0} v^{j+1} {}_{j+1}p_{x} \\
    &= \frac{1}{vp_{x}} \sum^{n}_{j=1} v^{j} {}_{j}p_{x} \\
    &= \underbrace{\frac{1}{vp_{x}}}_{>1} \cdot  a_{x:\enclose{actuarial}{n}} \\
    \\
    \therefore \ddot{a}_{x+1:\enclose{actuarial}{n}} &> a_{x:\enclose{actuarial}{n}}
\end{aligned}
$$

This approach might seem long winded, as it seems that it is sufficient to simply compare the cashflows of $1 > v^n$. However, that **ignores the probabilities**, which is properly accounted for in the above approach.

The premiums determined this way will **always be larger** than the premiums determined through the equivalence principle:

$$
\begin{aligned}
    P_{\text{Portfolio Percentile}} &\ge P_{\text{Equivalence Principle}} \\
    \\
    \text{As n} &\to \infty \\
    P_{\text{Portfolio Percentile}} &\to P_{\text{Equivalence Principle}}
\end{aligned}
$$

<!-- Why? -->

Alternatively, it can be used as a building block to decompose a regular assurance. An $n$ year term assurance can be thought of as the **sum of $n$ deferred TAs**, each with a one year term:

$$
\begin{aligned}
    A^1_{x:\enclose{actuarial}{n}} &= \sum^{n-1}_{k=0} {}_{k|}A^1_{x:\enclose{actuarial}{1}} \\
    A_{x} &= \sum^{\infty}_{k=0} {}_{k|}A_{x}
\end{aligned}
$$

> Since WLs are just term assurances with infinite coverage, it can be extended to WLs as well if needed. This result will come in handy in later sections.