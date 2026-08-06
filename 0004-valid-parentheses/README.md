# 4. Valid Parentheses

## Problem

https://leetcode.com/problems/valid-parentheses/

## Approach

Use a **stack** to keep track of opening brackets.

For each character:

- If it's an opening bracket, push it onto the stack.
- If it's a closing bracket, pop the top element from the stack.
- Check if the popped bracket matches the corresponding opening bracket.
- If it doesn't match or the stack is empty, return `false`.

At the end, the stack should be empty for the string to be valid.

---

## Complexity

Time: **O(n)**

Space: **O(n)**

---

## Learned

### Swift

- `Array<Character>` as a stack
- `append(_:)`
- `popLast()`
- `Dictionary<Character, Character>` for bracket mapping
- `switch` statement for pattern matching

### Go

- `[]rune` as a stack
- `append()`
- Slice operation (`stack = stack[:len(stack)-1]`)
- `map[rune]rune` for bracket mapping
- `switch` statement
```
