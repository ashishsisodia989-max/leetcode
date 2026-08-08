
# 6. Binary Search

## Problem

https://leetcode.com/problems/binary-search/

## Approach

Since the array is already sorted, use **Binary Search** to find the target efficiently.

Use two pointers:

- `start` points to the beginning of the search range.
- `end` points to the end of the search range.
- `mid` represents the middle element of the current search range.

Compare `nums[mid]` with the target:

- If `nums[mid] == target`, return `mid`.
- If `target > nums[mid]`, search the right half by moving `start` to `mid + 1`.
- Otherwise, search the left half by moving `end` to `mid - 1`.

Continue until `start > end`. If the target is not found, return `-1`.

---

## Complexity

### Brute Force

Time: **O(n)**

Space: **O(1)**

### Optimized

Time: **O(log n)**

Space: **O(1)**

---

## Learned

### Swift

- Binary search technique
- Two-pointer search range using `start` and `end`
- Calculate `mid` safely using `start + (end - start) / 2`
- Reduce the search space by half on every iteration

### Go

- Slice indexing
- Binary search implementation
- Two-pointer traversal
- In-place searching without additional memory
