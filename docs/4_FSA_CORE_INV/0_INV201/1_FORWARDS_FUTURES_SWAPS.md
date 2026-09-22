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

Following the no-arbitrage principle, the price of a forward can be determined using a replicating portfolio.


