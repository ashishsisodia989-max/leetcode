# 5. Merge Sorted Array

## Problem

https://leetcode.com/problems/merge-sorted-array/

## Approach

Since both arrays are already sorted, merge them from the **end** using three pointers.

- `i` points to the last valid element in `nums1`.
- `j` points to the last element in `nums2`.
- `k` points to the last position in `nums1`.

Compare the elements at `i` and `j`:

- Place the larger element at `k`.
- Move the corresponding pointer backward.
- Continue until one array is exhausted.

If elements remain in `nums2`, copy them into `nums1`.

---

## Complexity

### Brute Force

Time: **O((m+n) log(m+n))**

Space: **O(m+n)**

### Optimized

Time: **O(m+n)**

Space: **O(1)**

---

## Learned

### Swift

- Three-pointer technique
- Merge from the end to avoid overwriting values
- In-place array modification using `inout`
- No additional array required

### Go

- Slice indexing
- In-place array modification
- Three-pointer traversal
- Efficient merging without sorting
