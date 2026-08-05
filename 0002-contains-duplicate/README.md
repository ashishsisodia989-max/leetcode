# 3. Contains Duplicate

## Problem

https://leetcode.com/problems/contains-duplicate/

## Approach

Use a `Set` to keep track of elements already seen.

For each number:

- Check if it already exists in the set.
- If it does, return `true`.
- Otherwise, insert it into the set.

If the loop completes, no duplicates exist.

---

## Complexity

Time: **O(n)**

Space: **O(n)**

---

## Learned

### Swift

- `Set<Int>`
- `contains(_:)`
- `insert(_:)`
- Fast lookups using a hash-based collection

### Go

- `map[int]struct{}`
- Comma-ok idiom (`if _, exists := map[key]; exists`)
- Constant-time lookups using a hash map
