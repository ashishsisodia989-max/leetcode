# 7. Search Insert Position

## Problem

https://leetcode.com/problems/search-insert-position/

## Approach

Since the array is already sorted, use **Binary Search** to find the target or determine the position where it should be inserted.

Use two pointers:

- `start` points to the beginning of the search range.
- `end` points to the end of the search range.
- `mid` represents the middle element.

Compare `nums[mid]` with the target:

- If `nums[mid] == target`, return `mid`.
- If `target > nums[mid]`, search the right half by moving `start` to `mid + 1`.
- If `target < nums[mid]`, search the left half by moving `end` to `mid - 1`.

If the target is not found, the loop ends when:

```text
start > end
