# 8. Maximum Average Subarray I

## Problem

https://leetcode.com/problems/maximum-average-subarray-i/

## Approach

Since we need to find the maximum average of a **contiguous subarray of size `k`**, use the **Sliding Window** technique.

Instead of calculating the sum of every subarray from scratch, maintain the sum of the current window.

- First, calculate the sum of the first `k` elements.
- Store it as `maxSum`.
- Slide the window one position at a time.
- Add the new element entering the window.
- Remove the element leaving the window.
- Update `maxSum` if the current window has a larger sum.
- Finally, return `maxSum / k`.

Because every subarray has the same size `k`, the subarray with the maximum sum will also have the maximum average.

---

Complexity

Time: O(n)

Space: O(1)
