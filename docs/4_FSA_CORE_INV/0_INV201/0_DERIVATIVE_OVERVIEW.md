# **Derivative Overview**

The purpose of this section is to cover the following learning objectives:

* 1a - Understand the payoffs of basic derivatives instruments
* 1b - Be able to identify the key differences between forwards and futures
* 1c - Be able top compare European, American, Bermudan, Asian options, and various exotic options
* 1d - Understand the mechanics of derivatives trading

## **Introduction to Derivatives**

Derivatives are **financial contracts** between **two parties** that agree to a **future transaction(s)**. The value of the contract is **derived from** (hence the name) the value of an **underlying variable** - both **financial** (EG. stock, interest rates) or **non-financial** metrics (EG. weather).

The Payoff of a derivative is the **net cashflow received** from the perspective of the contractholder at the **time of the future transaction(s)**. Given that the value of the underlying variable is unknown, there is a **range of possible payoffs** that is usually expressed as a **function of the underlying variable**.

!!! Note

    If the transaction involves the **delivery** of an asset (EG. Stock, Corn), the payoff assumes that asset is either bought or sold at the market price at the time of the transaction.

!!! Warning

    Payoffs EXCLUDE the cost of the derivative. Thus, it is NOT THE SAME as the Profit of the derivative.

## **Trading Derivatives**

Generally speaking, the **buyer** of the derivative contract is said to be taking a **long position** while the **seller** of the contract (counterparty) is known as taking a **short position**. Each contract is **constructed differently**, thus the exact interpretation of long and short is dependent on the type of contract.

There are two main ways to trade derivatives:

|    **Exchange Traded Market**    |             **Over-the-Counter Market**             |
| :------------------------------: | :-------------------------------------------------: |
|   Standardized contracts only    |          Standardized & bespoke contracts           |
|           Centralized            | Centralized (standardized) <br> Bilateral (Bespoke) |
| More transactions, smaller sizes |          Fewer transactions, larger sizes           |

Bilateral trading refers to trading **directly with another entity** looking to enter the opposite position. Centralized trading refers to trading with a **Centralized Counterparty** (CCP) instead, which will automatically be the counterparty for the trade:

* CCP will be the buyer to each seller
* CCP will be the seller to each buyer

<!-- Self Made -->
![DERIVATIVE_TRADING](Assets/0_DERIVATIVE_OVERVIEW.md/DERIVATIVE_TRADING.png){.center}

!!! Note

    CCPs are a general term; in an exchange context, it is commonly known as the **Clearing House**. It is advised to use Clearhing House for Exchanges and CCPs for OTC markets. For simplicity, this set of notes will use CCP to refer to both.

    Only select Brokers or instuitions are allowed to trade with CCPs, known as **CCP members**.

CCPs only accept standardized contracts to ease the management of their portfolio.

### Systematic Risk

To understand the benefits of CCPs, it is important to first understand the risks of trading bilaterally:

* Each party is directly exposed to the **credit risk of their counterparty** (another instituition)
* If one party defaults, their counterparty is likely to **experience a loss**, which could **cause them to default** as well
* All **their counterparties** may experience losses and potentially default as well; so on and so forth
* This is known as **Systematic Risk**, where the default of one entity leads to a **ripple effect** that causes other entities to default as well, ultimately leading to a **collapse of the financial system**

CCPs centralize the structure, converting it into a **single point of failure** that is better positioned to be managed and hence less likely to result in a system wide collapse:

* Requires **Margin** for each trade; margin is a **form of collateral** to cover the potential losses or defaults
* Requires contribution to a **Guaranty Fund** that may be used when margin is insufficient in the event of a default
* These requirements increases the amount of collateral, which **reduces the likelihood of default**
* Since each party is less likely to default, the CCP itself is less likely to fail and hence **lower systematic risk**

### **Margin**

As mentioned, one of the primary methods that CCPs use to manage credit risk are via Margins. There are several key terminologies:

* **Initial Margin** - Amount that must be posted when **initially** entering the contract
* **Variation Margin** - Amount that is **added/subtracted** from the margin account to **reflect gains/losses**
* **Maintenance Margin** - **Minimum amount** required in the margin account to keep the contract in-force
* **Margin Call** - **Request to post more margin** when the margin account falls below the maintenance margin

Daily settlement
Intraday settlement
Member and broker

Obligation only


### Benefits of Central Counterparties

## **Forwards & Futures**

### **Key Difference**

## **Call & Put Options**

## **Swaps**

## **Caps & Floors**

