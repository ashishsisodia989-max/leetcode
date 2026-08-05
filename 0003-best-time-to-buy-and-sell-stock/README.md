# 2. Best Time to Buy and Sell Stock

## Problem

https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

## Approach

Track the minimum stock price seen so far.

For each price:

- Update the minimum price if the current price is lower.
- Otherwise, calculate the profit.
- Update the maximum profit if the current profit is greater.

This avoids checking every possible buy/sell pair.

---

## Complexity

### Brute Force

Time: **O(n²)**

Space: **O(1)**

### Optimized

Time: **O(n)**

Space: **O(1)**

---

## Learned

### Swift

- `minPrice = min(minPrice, price)`
- Single-pass array traversal
- Track minimum value while iterating
- Update maximum profit on each iteration

### Go

- Single-pass solution using variables
- No extra data structures required
