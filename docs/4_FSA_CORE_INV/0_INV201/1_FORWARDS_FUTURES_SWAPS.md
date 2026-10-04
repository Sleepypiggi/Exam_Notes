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

Since there is no cost to enter the contract, the primary concern is how much the asset should be bought or sold for

For simplicity, consider an asset with NO income. Following the no-arbitrage principle, first construct a **replicating portfolio**:

<center>

|            **Short Forward**            |            **Long Forward**             |
| :-------------------------------------: | :-------------------------------------: |
|         Short underlying asset          |          Long underlying asset          |
|  Long $F_{T}$ zero coupon bond for $T$  | Short $F_{T}$ zero coupon for $T$ bond  |
|        Payoff = $F_{T} - S_{T}$         |        Payoff = $S_{T} - F_{T}$         |
| Cost = $-(S_{0} - F_{T} \cdot e^{-rT})$ | Cost = $-(F_{T} \cdot e^{-rT} - S_{0})$ |

</center>

!!! Warning

    Cost is often expressed assuming that the time 0 cashflow is an **OUTFLOW**. We usually think in terms of cash inflows, thus remember to add a negative at the front.


Given that the **cost of entering a forward contract is zero**, the forward price can be shown to be the **accumulated value of the underlying asset**:

$$
\begin{aligned}
    S_{0} - F_{T} \cdot e^{-rT} &= 0 \\
    F_{T} \cdot e^{-rT} - S_{0} &= 0 \\
    F_{T} &= S_{0} \cdot e^{rT}
\end{aligned}
$$

If the forwards are mispriced, the following **arbitrage strategies** can be use:

* Forward is **expensive** - **Cash & Carry** - Short Bond to **get Cash** to buy the asset and **carry the asset** till delivery
* Forward is **cheaper** - **Reverse Cash & Carry** - Reverse of the above

!!! Tip

    Recall that arbitrage strategies are meant to buy low and sell high - **offsetting positions** that generate **riskless** profit.

    Thus, arbitrage strategies can be formed by using the actual derivative and the **replicating portfolio of the offsetting position**.

<Center>

| **Cash & Carry**       | **Time 0 CF** |        **Time T CF**         |
| :--------------------- | :-----------: | :--------------------------: |
| **Short Forward**      |       0       |       $F_{T} - S_{T}$        |
| **Short Bond (Cash)**  |    $S_{0}$    |    $-S_{0} \cdot e^{rT}$     |
| **Long Asset (Carry)** |   $-S_{0}$    |           $S_{T}$            |
| **Net Cashflow**       |       0       | $F_{T} - S_{0} \cdot e^{rT}$ |

</Center>

!!! Tip

    The above portfolio achieves arbitrage by forcing the initial cashflow to 0 by **borrowing up to the initial spot price**, generating arbitrage at time $T$.

    An alternative method is to force the terminal cashflow to 0 by borrowing the **PV of the forward price**, generating arbitrage at time 0.

    Both of these methods are valid and will result in the **same arbitrage profits** after accounting for the time value of money.

For an arbitrage opportunity to exist, the payoff at time T **must be positive**; the forward price must be more expensive:

$$
\begin{aligned}
    F_{T} - S_{0} \cdot e^{rT} \gt 0
    F_{T} \gt S_{0} \cdot e^{rT}
\end{aligned}
$$

The reverse cash and carry strategy will lead to an opposite result. Thus, if arbitrage opportunities cannot exist, then the only possible price is the theoretical price shown above:

$$
\begin{aligned}
    F_{T} \gt S_{0} \cdot e^{rT} \\
    F_{T} \lt S_{0} \cdot e^{rT} \\
    \therefore F_{T} &= S_{0} \cdot e^{rT}
\end{aligned}
$$

!!! Tip

    The key intuition that the absence of arbitrage opportunities forms an **upper and lower bound** on the price of the derivative, resulting in only theoretical price that satisfies both; if not a trader could utilize one of the strategies for arbitrage.

#### **Discrete Income**

Consider an underlying asset that pays an **income in discrete time** - Dividend stocks or Coupon bonds. The income must be accounted for. Since the forward contract holder **does NOT earn the income**, it should be **removed from the accumulated value** of the asset:

$$
\begin{aligned}
    F_{T, \text{Dividend}} &= S_{0} \cdot e^{rT} - \text{AV(Dividends)} \\
    F_{T, \text{Dividend}} &= F_{T, \text{No Dividend}} - \text{AV(Dividends)}
\end{aligned}
$$

The bottom's up derivation is identical to the no income case, with the key difference being that **additional borrowing/lending** needs to be done to **replicate the income** from the underlying asset.


!!! Warning

    Borrowing or lending for different durations may have different interest rates.


#### **Continuous Income**

Similarly, consider an asset that pays income in continuous time - a mutual fund with a collection of assets that pays income at different times, appearing continuous in totality.





Arbitrage need to borrow for specific durations to replicate the dividend

Continuous dividend >> Index

Commod
No guaranteed price

 

