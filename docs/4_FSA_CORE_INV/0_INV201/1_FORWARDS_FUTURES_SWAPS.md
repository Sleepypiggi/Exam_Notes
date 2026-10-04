# **Forwards, Futures & Swaps**

## **Forwards**

A **Forward Contract** is an agreement between two parties to buy or sell a specified asset on a specified **future date** (Delivery Price) at a specified **future price** (Forward Price). There is **NO cost** to enter a forward contract.

* **Long position** - **Buy the asset** at the delivery price on the delivery date
* **Short position** - **Sell the asset** (deliver the asset) on the delivery price on the delivery date

Forward contracts are an **Obligation** from both parties to buy or sell. As such, their primary use case is for **Hedging** at a low cost, as it **fixes the price** of the asset ahead of time, **eliminating price risk**. This **protects against adverse price movements** but has the downside of not benefitting from beneficial movements. 

!!! Note

    Conversely, a contract to purchase immediately is known as a **Spot Contract**. Similarly, the current price of an asset is known as the **Spot Price**.
    
### **Payoff & Profit**

The payoff of a forward can be understood as the following:

<center>

|           **Long Position**           |      **Short Position**       |
| :-----------------------------------: | :---------------------------: |
|         Buy at Forward price          | Buy at Spot price on delivery |
| Sell asset for Spot price on delivery |    Sell for Forward price     |
|             $S_{T} - $F$              |         $F - $S_{T}$          |

</center>

<!-- Insert Image -->

!!! Warning

    The short position assumes that the seller does not own the asset and hence has to purchase one on the delivery date.

    Even if the seller did own the asset beforehand, the asset could have been sold for the spot price instead of being sold to the forward purchaser, thus the payoff still holds true.
    
There is **NO COST** to enter a forward contract. Thus, the payoff and profit of a forward are the **same**. 

### **Forward Prices**

For simplicity, consider an asset with NO income. Following the no-arbitrage principle, first construct a **replicating portfolio**:

<center>

| **Replicating Portfolio** |       **Time 0**       |   **Time T**    |
| :------------------------ | :--------------------: | :-------------: |
| **Short Forward**         |          $0$           | $F_{T} - S_{T}$ |
| **Short Asset**           |        $S_{0}$         |    $-S_{T}$     |
| **Long Bond**             | $-F_{T} \cdot e^{-rT}$ |     $F_{T}$     |

| **Replicating Portfolio** |      **Time 0**       |   **Time T**    |
| :------------------------ | :-------------------: | :-------------: |
| **Long Forward**          |          $0$          | $S_{T} - F_{T}$ |
| **Long Asset**            |       $-S_{0}$        |     $S_{T}$     |
| **Short Bond**            | $F_{T} \cdot e^{-rT}$ |    $-F_{T}$     |

</center>

!!! Warning

    Cost is often expressed assuming that the time 0 cashflow is an **OUTFLOW**. We usually think in terms of cash inflows, thus remember to add a negative at the front if asked.

!!! Note

    An easy way to remember the replicating portfolio is that the position of the underlying asset follows the forward, the opposite position is taken on the bond.

Following the no arbitrage assumption, the cost of entering the replicating portfolio and the forward contract must be the same. Thus, the forward price can be shown to be the **accumulated value of the underlying asset**:

$$
\begin{aligned}
    S_{0} - F_{T} \cdot e^{-rT} &= 0 \\
    F_{T} \cdot e^{-rT} - S_{0} &= 0 \\
    F_{T} &= S_{0} \cdot e^{rT}
\end{aligned}
$$

If the forwards are mispriced, the following **arbitrage strategies** can be use:

* Actual $\gt$ Theoretical (Expensive) - **Cash & Carry** - Short Bond to **get Cash** to buy the asset and **carry the asset** till delivery
* Actual $\lt$ Theoretical (Cheaper) - **Reverse Cash & Carry** - Lend money & short the asset

!!! Tip

    Recall that arbitrage strategies are meant to **buy low and sell high** - **offsetting positions** that generate **riskless** profit.

    Thus, arbitrage strategies can be formed by using the actual derivative and the **replicating portfolio of the offsetting position**.

<Center>

| **Cash & Carry**       | **Time 0** |          **Time T**          |
| :--------------------- | :--------: | :--------------------------: |
| **Short Forward**      |     0      |       $F_{T} - S_{T}$        |
| **Long Asset (Carry)** |  $-S_{0}$  |           $S_{T}$            |
| **Short Bond (Cash)**  |  $S_{0}$   |    $-S_{0} \cdot e^{rT}$     |
| **Net Cashflow**       |     0      | $F_{T} - S_{0} \cdot e^{rT}$ |

| **Reverse Cash & Carry** | **Time 0** |          **Time T**          |
| :----------------------- | :--------: | :--------------------------: |
| **Long Forward**         |     0      |       $S_{T} - F_{T}$        |
| **Short Asset (Carry)**  |  $S_{0}$   |           $-S_{T}$           |
| **Long Bond (Cash)**     |  $-S_{0}$  |     $S_{0} \cdot e^{rT}$     |
| **Net Cashflow**         |     0      | $S_{0} \cdot e^{rT} - F_{T}$ |

</Center>

!!! Tip

    The above portfolio achieves arbitrage by forcing the initial cashflow to 0 by **borrowing up to the initial spot price**, generating arbitrage at time $T$. An alternative method is to force the **terminal cashflow to 0** by borrowing the **PV of the forward price**, generating arbitrage at time 0.

    Both of these methods are valid and will result in the **same arbitrage profits** after accounting for the time value of money.

For an arbitrage opportunity to exist, the payoff at time T **must be positive**; the forward price must be more expensive:

$$
\begin{aligned}
    F_{T} - S_{0} \cdot e^{rT} \gt 0 \\
    F_{T} \gt S_{0} \cdot e^{rT} \\
    \\
    S_{0} \cdot e^{rT} - F_{T} \gt 0 \\
    F_{T} \lt S_{0} \cdot e^{rT}
\end{aligned}
$$

For each of the arbitrage strategies to exist, the forward price must be more or less expensive than the theoretical price. Thus, in the absense of arbitrage strategies, the above inequalities forms an **upper and lower bound** on the price of the deriative, such that **ONLY the theoretical price** can satisfy both in a no-arbitrage world.

$$
\begin{aligned}
    F_{T} \gt S_{0} \cdot e^{rT} \\
    F_{T} \lt S_{0} \cdot e^{rT} \\
    \therefore F_{T} &= S_{0} \cdot e^{rT}
\end{aligned}
$$

#### **Discrete Income**

Consider an underlying asset that pays an **income in discrete time** - EG. Dividend Stock or Coupon Bonds. Forward contractholders **do not own the asset**, thus would **not receive any of the income**. However, the price of the underlying asset would have **already accounted for the income**, thus there is a **need to remove it** to accurately represent the cost from the forward contractholder's perspective.

$$
\begin{aligned}
    F_{T, \text{Income}} &= S_{0} \cdot e^{rT} - \text{AV(Income)} \\
    F_{T, \text{Income}} &= F_{T, \text{No Income}} - \text{AV(Income)}
\end{aligned}
$$

The bottom's up derivation is identical to the no income case, with the key difference being that **additional borrowing/lending** needs to be done to **replicate the income** from the underlying asset.

<center>

| **Replicating Portfolio** |       **Time 0**       | **Time t** |   **Time T**    |
| :------------------------ | :--------------------: | :--------: | :-------------: |
| **Short Forward**         |          $0$           |    $0$     | $F_{T} - S_{T}$ |
| **Short Asset**           |        $S_{0}$         |    $-D$    |    $-S_{T}$     |
| **Long Bond**             | $-F_{T} \cdot e^{-rT}$ |    $0$     |     $F_{T}$     |
| **Long Bond (Div)**       |   $-D \cdot e^{-it}$   |    $D$     |       $0$       |

| **Replicating Portfolio** |      **Time 0**       | **Time t** |   **Time T**    |
| :------------------------ | :-------------------: | :--------: | :-------------: |
| **Long Forward**          |          $0$          |    $0$     | $S_{T} - F_{T}$ |
| **Long Asset**            |       $-S_{0}$        |    $D$     |     $S_{T}$     |
| **Short Bond**            | $F_{T} \cdot e^{-rT}$ |    $0$     |    $-F_{T}$     |
| **Short Bond (Div)**      |  $-D \cdot e^{-it}$   |    $-D$    |       $0$       |

</center>

!!! Warning

    Borrowing or lending for different durations may have different interest rates - represented by $r$ and $i$ respectively.

!!! Tip

    The replicating portfolio only borrows or lends, not both.

$$
\begin{aligned}
    S_{0} - F_{T} \cdot e^{-rT} - D \cdot e^{-it} &= 0 \\
    F_{T} \cdot e^{-rT} &= S_{0} - D \cdot e^{-it} \\
    F_{T} &= S_{0} e^{rT} - D \cdot e^{-it} \cdot e^{rT} \\
    F_{T} &= S_{0} e^{rT} - \text{AV (Income)}
\end{aligned}
$$

The same (reverse) Cash & Carry arbitrage strategies can be used. Any income must be accounted for with additional borrowing/lending, similar to the replicating portfolio. As such, no explicit cashflow table will is provided as the principles are the same.

#### **Continuous Income**

Consider an asset that instead pays **income continuously** - EG. Collection of assets that pays income at different times, appearing continuous in totality (Stock Index).

Similarly, consider an asset that pays income in continuous time - a mutual fund with a collection of assets that pays income at different times, appearing continuous in totality.

#### **Commodities**



Continuous dividend >> Index

Commod
No guaranteed price

 

