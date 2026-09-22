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

|           **Long Forward**            |           **Short Forward**            |
| :-----------------------------------: | :------------------------------------: |
|        Short underlying asset         |         Long underlying asset          |
| Long $F_{T}$ zero coupon bond for $T$ | Short $F_{T}$ zero coupon for $T$ bond |
|       Payoff = $S_{T} - F_{T}$        |        Payoff = $F_{T} - S_{T}$        |
| Cost = $S_{0} - F_{T} \cdot e^{-rT}$  |  Cost = $F_{T} \cdot e^{-rT} - S_{0}$  |

</center>

Given that the **cost of entering a forward contract is zero**, the forward price can be shown to be:

$$
\begin{aligned}
    S_{0} - F_{T} \cdot e^{-rT} &= 0 \\
    F_{T} \cdot e^{-rT} - S_{0} &= 0 \\
    F_{T} &= S_{0} \cdot e^{rT}
\end{aligned}
$$

