# **Swaps**

A **Swap Contract** is an agreement between two parties to **exchange cashflows** (*swap*) at specified future time point(s), traded only in **OTC markets**. This exam will mainly focus on **Interest Rate Swaps**, where two parties exchange interest payments (fixed & floating) on the same notional amount:

* **Fixed Interest Rate** - 
* **Floating Interest Rate** - 

| **Fixed Rate Payer**             | **Floating Rate Payer**        |
| :------------------------------- | :----------------------------- |
| Loan at Fixed Rate               | Loan with Floating Rate        |
| Pays counterparty Floating Rate  | Pays counterparty Fixed Rate   |
| Receives Fixed Rate              | Receives Floating Rate         |
| Net pays Floating Rate (swapped) | Net pays Fixed Rate (swapped)  |
| Believes that rates will go down | Believes that rates will go up |


!!! Tip

    Interest rates are typically measured in a special unit known as **Basis Points** (bps):

    $$
        \text{1 bps} = 0.01% \\
        \therefore \text{100 bps} = 1.00%
    $$

    Basis point is basically a smaller unit of measure than percentage point (EG. mm vs cm). Apart from being a shorthand, the key reason is for **clarity**:

    * Expressing changes in percentages could either refer to additive or multiplicative increases; EG. 10% increased by 10% could either refer to 11% (multiplicative) or 20% (additive)
    * 10% increased by 1000 bps strictly refers to **additive increases** (20%)

There are other kinds of Swaps that were briefly mentioned:

* Currency Swaps
* Equity Swaps
* Commodity Swaps
* Credit Default Swaps
* Volatility Swaps

## **Payoff & Profit**

The payoff for a swap contract should ONLY consider cashflows that **took place because of the swap**; the exchange of cashflows. Similarly, since there is **no cost** to enter the contract, the payoff and profit of a swap is the **same**.

$$
    \text{Profit}_{\text{Fixed}} = \text{Payoff}_{\text{Fixed}} = \text{Notional Amount} \cdot \left(i_{\text{Floating}} - i_{\text{Fixed}} \right)
$$

<!-- Self Made -->
![SWAP_CF_PAYOFF](Assets/2_SWAPS.md/SWAP_CF_PAYOFF.png){.center}

!!! Warning

    Any computation should be based on the **EFFECTIVE interest rate** ($i$) per payment period. However,  unless otherwise stated, the rates provided in the question are usually the **ANNUAL NOMINAL interest rates**. Thus, there is a need to convert them:

    $$
    \begin{aligned}
        i &= r \cdot \frac{1}{n} \\
        \text{Effective} &= \text{Nominal} \cdot \text{Compounding Frequency}
    \end{aligned}
    $$

## **Comparative Advantage**

Suppose that there are two parties who want to buy borrow an identical amount of money. Individually, each party is able to borrow the funds directly from the bank. However, it can be shown that via a **Swap**, each party is able to achieve a **better rate than if they had went individually**.

## **Floating Rate References**

LIBOR
SOFR

There are two commonly used reference rates in the US. LIBOR was phased out in



| **LIBOR**                                        | **SOFR**                                        |
| :----------------------------------------------- | :---------------------------------------------- |
| London Interbank Offered Rate                    | Secured Overnight Financing Rate                |
| Rate for short term **unsecured** funds          | Rate for short term funds **backed by T-bills** |
| Some default risk                                | Risk free                                       |
| **Estimated** via surveys; prone to manipulation | Based on **actual** transactions                |
| Known at **beginning** of period                 | Known only at **end of period**                 |

Deriving interest rates