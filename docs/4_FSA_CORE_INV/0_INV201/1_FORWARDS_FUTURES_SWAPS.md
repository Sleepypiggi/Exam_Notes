# **Forwards**

A **Forward Contract** is an agreement between two parties to buy or sell a specified asset on a specified **future date** (Delivery Price) at a specified **future price** (Forward Price). There is **NO cost** to enter a forward contract.

* **Long position** - **Buy the asset** at the delivery price on the delivery date
* **Short position** - **Sell the asset** (deliver the asset) on the delivery price on the delivery date

Forward contracts are an **Obligation** from both parties to buy or sell. As such, their primary use case is for **Hedging** at a low cost, as it **fixes the price** of the asset ahead of time, **eliminating price risk**. This **protects against adverse price movements** but has the downside of not benefitting from beneficial movements. 

!!! Warning

    The forward price is the agreed upon future price, **NOT the cost to enter the contract**.

!!! Note

    Conversely, a contract to purchase immediately is known as a **Spot Contract**. Similarly, the current price of an asset is known as the **Spot Price**.

## **Payoff & Profit**

The payoff of a forward can be understood as the following:

<center>

|           **Long Position**           |      **Short Position**       |
| :-----------------------------------: | :---------------------------: |
|         Buy at Forward price          | Buy at Spot price on delivery |
| Sell asset for Spot price on delivery |    Sell for Forward price     |
|           $S_{T} - $F_{0}$            |       $F_{0} - $S_{T}$        |

</center>

!!! Warning

    The forward price is paid at time T but agreed upon at time 0. The subscript is based on **WHEN the forward price** was agreed upon, thus is denoted by $F_{0}$.

<!-- Insert Image -->

!!! Warning

    The short position assumes that the seller does not own the asset and hence has to purchase one on the delivery date.

    Even if the seller did own the asset beforehand, the asset could have been sold for the spot price instead of being sold to the forward purchaser, thus the payoff still holds true.
    
There is **NO COST** to enter a forward contract. Thus, the payoff and profit of a forward are the **same**. 

## **Forward Prices**

For simplicity, consider an asset with NO income. Following the no-arbitrage principle, first construct a **replicating portfolio**:

<center>

| **Replicating Portfolio** |       **Time 0**       |   **Time T**    |
| :------------------------ | :--------------------: | :-------------: |
| **Short Forward**         |          $0$           | $F_{0} - S_{T}$ |
| **Short Asset**           |        $S_{0}$         |    $-S_{T}$     |
| **Long Bond**             | $-F_{0} \cdot e^{-rT}$ |     $F_{0}$     |

| **Replicating Portfolio** |      **Time 0**       |   **Time T**    |
| :------------------------ | :-------------------: | :-------------: |
| **Long Forward**          |          $0$          | $S_{T} - F_{0}$ |
| **Long Asset**            |       $-S_{0}$        |     $S_{T}$     |
| **Short Bond**            | $F_{0} \cdot e^{-rT}$ |    $-F_{0}$     |

</center>

!!! Warning

    Cost is often expressed assuming that the time 0 cashflow is an **OUTFLOW**. We usually think in terms of cash inflows, thus remember to add a negative at the front if asked.

!!! Note

    An easy way to remember the replicating portfolio is that the position of the underlying asset follows the forward, the opposite position is taken on the bond.

Following the no arbitrage assumption, the cost of entering the replicating portfolio and the forward contract must be the same. Thus, the forward price can be shown to be the **accumulated value of the underlying asset**:

$$
\begin{aligned}
    S_{0} - F_{0} \cdot e^{-rT} &= 0 \\
    F_{0} \cdot e^{-rT} - S_{0} &= 0 \\
    F_{0} &= S_{0} \cdot e^{rT}
\end{aligned}
$$

If the forwards are mispriced, the following **arbitrage strategies** can be use:

* Actual $\gt$ Theoretical (Expensive) - **Cash & Carry** - Short Bond to **get Cash** to buy the asset and **carry the asset** till delivery
* Actual $\lt$ Theoretical (Cheaper) - **Reverse Cash & Carry** - Short the asset to get Cash to lend; using the returned amount, buy back the asset to deliver

!!! Tip

    Recall that arbitrage strategies are meant to **buy low and sell high** - **offsetting positions** that generate **riskless** profit.

    Thus, arbitrage strategies can be formed by using the actual derivative and the **replicating portfolio of the offsetting position**.

<Center>

| **Cash & Carry**       | **Time 0** |          **Time T**          |
| :--------------------- | :--------: | :--------------------------: |
| **Short Forward**      |     0      |       $F_{0} - S_{T}$        |
| **Long Asset (Carry)** |  $-S_{0}$  |           $S_{T}$            |
| **Short Bond (Cash)**  |  $S_{0}$   |    $-S_{0} \cdot e^{rT}$     |
| **Net Cashflow**       |     0      | $F_{0} - S_{0} \cdot e^{rT}$ |

| **Reverse Cash & Carry** | **Time 0** |          **Time T**          |
| :----------------------- | :--------: | :--------------------------: |
| **Long Forward**         |     0      |       $S_{T} - F_{0}$        |
| **Short Asset (Carry)**  |  $S_{0}$   |           $-S_{T}$           |
| **Long Bond (Cash)**     |  $-S_{0}$  |     $S_{0} \cdot e^{rT}$     |
| **Net Cashflow**         |     0      | $S_{0} \cdot e^{rT} - F_{0}$ |

</Center>

!!! Tip

    The above portfolio achieves arbitrage by forcing the initial cashflow to 0 by **borrowing up to the initial spot price**, generating arbitrage at time $T$. An alternative method is to force the **terminal cashflow to 0** by borrowing the **PV of the forward price**, generating arbitrage at time 0.

    Both of these methods are valid and will result in the **same arbitrage profits** AFTER accounting for the **time value of money**.

<!-- Self Made (Refer to IFM diagram) -->


For an arbitrage opportunity to exist, the payoff at time T **must be positive**; the forward price must be more expensive:

$$
\begin{aligned}
    F_{0} - S_{0} \cdot e^{rT} \gt 0 \\
    F_{0} \gt S_{0} \cdot e^{rT} \\
    \therefore F_{0} \le S_{0} \cdot e^{rT} \\
    \\
    S_{0} \cdot e^{rT} - F_{0} \gt 0 \\
    F_{0} \lt S_{0} \cdot e^{rT} \\
    \therefore F_{0} \ge S_{0} \cdot e^{rT}
\end{aligned}
$$

For each of the arbitrage strategies to exist, the forward price must be more or less expensive than the theoretical price. Thus, in the absense of arbitrage strategies, the above inequalities forms an **upper and lower bound** on the price of the deriative, such that **ONLY the theoretical price** can satisfy both in a no-arbitrage world.

$$
\begin{aligned}
    F_{0} \le S_{0} \cdot e^{rT} \\
    F_{0} \ge S_{0} \cdot e^{rT} \\
    \therefore F_{0} &= S_{0} \cdot e^{rT}
\end{aligned}
$$

!!! Note

    Another implication for the no arbitrage price is that an investor should be **indifferent between a (long) forward and stock**, as the **profit is the same**:

    $$
        \text{Long Forward Profit} = \text{Long Stock Profit} = S_{T} - S_{0} \cdot e^{rT}
    $$

    The profit for a Stock is derived assuming that the trader **borrows to purchase the stock** at time 0 at the risk free rate. Even if the investor does not borrow, the profit should nonetheless **account for the time value of money**.
    
    This is why when the forward is mispriced, an arbitrage strategy exists to substitute one for the other and take opposing positions; the bond component is simply to balance.

### **Discrete Income**

Consider an underlying asset that pays an **income in discrete time** - Dividend Stock or Coupon Bonds:

* Forward contractholders **do not own the asset** before the delivery date, thus do **not receive any of income** during this period
* Asset prices are **prospective**. Thus, the spot price of the asset at time 0 would have already **accounted for the future income**
* Thus, there is a need to **remove the impact of any income** during the forward contract duration to **accurately reflect the price of the asset** from the forward contractholder's perspective:

$$
\begin{aligned}
    F_{T, \text{No Income}} &= S_{0} \cdot e^{rT} \\
    F_{T, \text{Income}} &= S_{0, \text{Adjusted}} \cdot e^{rT} \\
    \therefore F_{T, \text{Income}} &= (S_{0} - \text{PV(Income)}) \cdot e^{rT} \\
    \\
    F_{T, \text{Income}} &= S_{0} \cdot e^{rT} - \text{AV(Income)} \\
    \therefore F_{T, \text{Income}} &= F_{T, \text{No Income}} - \text{AV(Income)}
\end{aligned}
$$

!!! Note

    It is possible that a forward might **appear mispriced**, when in reality it is simply a failure to account for dividends.

In terms of replicating portfolios, the key difference being that **additional borrowing/lending** needs to be done to **replicate the income** from the underlying asset:

<center>

| **Replicating Portfolio** |       **Time 0**       | **Time t** |   **Time T**    |
| :------------------------ | :--------------------: | :--------: | :-------------: |
| **Short Forward**         |          $0$           |    $0$     | $F_{0} - S_{T}$ |
| **Short Asset**           |        $S_{0}$         |    $-D$    |    $-S_{T}$     |
| **Long Bond**             | $-F_{0} \cdot e^{-rT}$ |    $0$     |     $F_{0}$     |
| **Long Bond (Div)**       |   $-D \cdot e^{-it}$   |    $D$     |       $0$       |

| **Replicating Portfolio** |      **Time 0**       | **Time t** |   **Time T**    |
| :------------------------ | :-------------------: | :--------: | :-------------: |
| **Long Forward**          |          $0$          |    $0$     | $S_{T} - F_{0}$ |
| **Long Asset**            |       $-S_{0}$        |    $D$     |     $S_{T}$     |
| **Short Bond**            | $F_{0} \cdot e^{-rT}$ |    $0$     |    $-F_{0}$     |
| **Short Bond (Div)**      |  $-D \cdot e^{-it}$   |    $-D$    |       $0$       |

</center>

$$
\begin{aligned}
    S_{0} - F_{0} \cdot e^{-rT} - D \cdot e^{-it} &= 0 \\
    F_{0} \cdot e^{-rT} &= S_{0} - D \cdot e^{-it} \\
    F_{0} &= S_{0} e^{rT} - D \cdot e^{-it} \cdot e^{rT} \\
    F_{0} &= S_{0} e^{rT} - \text{AV (Income)}
\end{aligned}
$$

!!! Warning

    Borrowing or lending for different durations may have **different interest rates** - represented by $r$ and $i$ respectively.

!!! Tip

    The replicating portfolio only borrows or lends, not both. The **dividend will always be the same** as the original borrowing or lending.

The same (reverse) Cash & Carry strategies can be used to exploit arbitrage opportunities. Any income must be accounted for with additional borrowing/lending, similar to the replicating portfolio.

### **Continuous Income (Known Yield)**

Consider an asset that instead pays **income continuously** - Stock indices. This income can be assumed to be **reinvested**, thus the rate of payment is more akin to a **continuously compounded yield** (similar to interest rates). Similar to before, the price of the underlying asset **must be adjusted** to account for the effect of this income. The key difference is that the continuous income is **adjusted via "discounting"** rather than a linear adjustment.

Let the continuously compounded yield be $q$. It is assumed to be **constant** throughout the period before delivery, or the **average** of the rates during the period:

$$
\begin{aligned}
    F_{T, \text{No Income}} &= S_{0} \cdot e^{rT} \\
    F_{T, \text{Income}} &= S_{0, \text{Adjusted}} \cdot e^{rT} \\
    \therefore F_{T, \text{Income}} &= (S_{0} \cdot e^{-qT}) \cdot e^{rT} \\
    \\
    \therefore F_{T, \text{Income}} &= S_{0} \cdot e^{(r-q)T}
\end{aligned}
$$

!!! Note

    Stock indices are assumed to be comprised of a large number of dividend paying stocks, appearing to receive income continuously.

In terms of replicating portfolios, the key difference being that **to obtain 1 unit** of the asset at time T, $e^{-qT}$ units of the asset must be purchased at time 0:

<center>

| **Replicating Portfolio** |       **Time 0**       |   **Time T**    |
| :------------------------ | :--------------------: | :-------------: |
| **Short Forward**         |          $0$           | $F_{0} - S_{T}$ |
| **Short Asset**           | $S_{0}  \cdot e^{-qT}$ |    $-S_{T}$     |
| **Long Bond**             | $-F_{0} \cdot e^{-rT}$ |     $F_{0}$     |

| **Replicating Portfolio** |       **Time 0**       |   **Time T**    |
| :------------------------ | :--------------------: | :-------------: |
| **Long Forward**          |          $0$           | $S_{T} - F_{0}$ |
| **Long Asset**            | $-S_{0} \cdot e^{-qT}$ |     $S_{T}$     |
| **Short Bond**            | $F_{0} \cdot e^{-rT}$  |    $-F_{0}$     |

</center>

$$
\begin{aligned}

    S_{0} \cdot e^{-qT} - F_{0} \cdot e^{-rT} &= 0
    F_{0} \cdot e^{-rT} &= S_{0}  \cdot e^{-qT} \\
    F_{0} &= S_{0}  \cdot e^{(r-q)T}
\end{aligned}
$$

The same (reverse) Cash & Carry strategies can be used to exploit arbitrage opportunities. The yield must be accounted for by adjusting the number units to purchase at time 0.

### **Foreign Currencies**

If the underlying asset is a Foreign Currency, there are several key terminologies to take note of:

* **Domestic Currency** (USD) - Currency used to pay
* **Foreign Currency** (Other) - Currency to be delivered
* Price of the foreign currency represents the **Exchange Rate**; cost of **1 foreign currency in terms of domestic currency** (Spot Exchange Rate & Forward Exchange Rate)
* Foreign currencies can be lent or borrowed at the **foreign risk free rate** ($r_{f}$), similar to how domestic currencies can lent or borrowed at the **domestic risk free rate** ($r$)

Mechanically, foreign currencies are essentially assets with a **continuous yield**, which was covered in the previous section. Thus, the theoretical forward price can be shown to be:

$$
    F_{0} = S_{0} \cdot e^{(r-r_{f})T}
$$

It is important to avoid confusion:

* **Long Asset** - Convert domestic to foreign (Lending at foreign rate)
* **Short Asset** - Convert foreign to domestic (Borrowing at foreign rate)
* **Long Bond** - Lending at domestic rate
* **Short Bond** - Borrowing at domestic rate

!!! Tip

    Use L-L to remember - **L**ong bond means to **L**end.

<center>

| **Replicating Portfolio**   |         **Time 0**         |   **Time T**    |
| :-------------------------- | :------------------------: | :-------------: |
| **Short Forward**           |            $0$             | $F_{0} - S_{T}$ |
| **Borrow Foreign Currency** | $S_{0}  \cdot e^{-r_{f}T}$ |    $-S_{T}$     |
| **Lend Domestic Currency**  |   $-F_{0} \cdot e^{-rT}$   |     $F_{0}$     |

| **Replicating Portfolio**    |         **Time 0**         |   **Time T**    |
| :--------------------------- | :------------------------: | :-------------: |
| **Long Forward**             |            $0$             | $S_{T} - F_{0}$ |
| **Lend Foreign Currency**    | $-S_{0} \cdot e^{-r_{f}T}$ |     $S_{T}$     |
| **Borrow Domestic Currency** |   $F_{0} \cdot e^{-rT}$    |    $-F_{0}$     |

</center>

$$
\begin{aligned}
    S_{0} \cdot e^{-r_{f}T} - F_{0} \cdot e^{-rT} &= 0
    F_{0} \cdot e^{-rT} &= S_{0}  \cdot e^{-r_{f}T} \\
    F_{0} &= S_{0}  \cdot e^{(r - r_{f})T}
\end{aligned}
$$

!!! Note

    This no-arbitrage outcome is known as the **(Covered) Interest Rate Parity** in Economics. The difference in interest rates would have accounted for the different exchange rates, resulting in identical returns, hence investors would be **indifferent** to either option.

    $$
    \begin{aligned}
        F_{0} &= S_{0}  \cdot e^{(r - r_{f})T} \\
        \frac{F_{0}}{S_{0}} &= e^{(r - r_{f})T} \\
        (r - r_{f})T &= \ln \frac{F_{0}}{S_{0}} \\
        (r - r_{f}) &= \frac{1}{T} \cdot \ln \frac{F_{0}}{S_{0}} \\
        r &= r_{f} + \frac{1}{T} \cdot \ln \frac{F_{0}}{S_{0}}
    \end{aligned}
    $$

The same (reverse) Cash & Carry strategies can be used to exploit arbitrage opportunities. The yield must be accounted for by adjusting the number units to purchase at time 0; be clear on which rates to use.

### **Commodities**

There are two types of assets for Forward Contracts:

* **Investment Assets** - PRIMARILY meant for Investment purposes (EG. Stock, Currencies, Gold, Silver)
* **Consumption Assets** - **Primarily** meant for Consumption purposes (EG. Metals, Grain, Cattle etc)

Commodities refer to **Raw Materials**, which can be both an investment (Gold, Silver) or consumption (Others) assets. As a **physical** object, **additional storage costs** are incurred by the asset holder which are often **NOT factored into the price** of the asset. In this sense, these storage costs are **negative income** - they must be **added to the price** of the asset. They can similarly be expressed discretely or continuously:

$$
\begin{aligned}
    F_{0} &= \left[S_{0} + \text{PV(Storage Costs)} \right] \cdot e^{rT} \\
    F_{0} &= (S_{0} \cdot e^{qT}) \cdot e^{rT}
\end{aligned}
$$

HOWEVER, for consumption commodities, there is only an **upper bound** to the forward price:

$$
\begin{aligned}
    F_{0} &\le \left[S_{0} + \text{PV(Storage Costs)} \right] \cdot e^{rT} \\
    F_{0} &\le (S_{0} \cdot e^{qT}) \cdot e^{rT}
\end{aligned}
$$

Recall that the two arbitrage strategies form the upper and lower bounds of the forward price:

* Forward Expensive - Cash & Carry - Upper Bound
* Forward Cheaper - Reverse Cash & Carry - Lower Bound

For consumption assets, short selling is **generally unavailable**, because these assets are often used for production and **CANNOT be substituted with a forward contract**, because the forward **cannot be used for production** since the asset is only delivered later. Thus, only the upper bound of the forward price exists; there is **no fixed forward price for consumption assets**.

Not all consumption asset holders are unwilling to short sell their assets. The **fewer willing** to do so, the **more arbitrage** opportunities exist and hence **lower the price** of the forward. The willingness to sell is typically related to the **expectations of the supply** - if supply is expected to be **low**, then **fewer** are willing to sell (as it might impact their production). The extent to which the forward price is lower is known as the **Convenience Yield** ($y$) of the asset:

$$
\begin{aligned}
    F_{0, \text{Actual}} \cdot e^{yT} &= F_{0, \text{Theoretical}}
\end{aligned}
$$

## **Forward Value**

The value

The **value** of a forward contract at any given time is the **present value of the difference in forward prices**:

$$
\begin{aligned}
    V_{t} = (F_{t} - F_{0}) \cdot e^{-rt}
\end{aligned}
$$

At time 0, the value of a forward contract must be 0


## **Expected Future Spot Prices**

The forward price is the price that traders will pay on the delivery date. Thus, the current price of forwards should reflect the **collective expectation** of the spot price on the delivery date:

* Normal Backwardation
* Cotango

There are two proposed explanations: