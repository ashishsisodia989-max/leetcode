package main

func lengthOfLongestSubstring(s string) int {
	characters := []rune(s)
	set := make(map[rune]bool)

	left := 0
	maxLength := 0

	for right := 0; right < len(characters); right++ {

		for set[characters[right]] {
			delete(set, characters[left])
			left++
		}

		set[characters[right]] = true

		currentLength := right - left + 1

		if currentLength > maxLength {
			maxLength = currentLength
		}
	}

	return maxLength
}
