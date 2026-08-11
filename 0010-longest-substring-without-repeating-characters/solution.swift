func lengthOfLongestSubstring(_ s: String) -> Int {
    let characters = Array(s)
    var set = Set<Character>()

    var left = 0
    var maxLength = 0

    for right in 0..<characters.count {
        while set.contains(characters[right]) {
            set.remove(characters[left])
            left += 1
        }

        set.insert(characters[right])

        maxLength = max(maxLength, right - left + 1)
    }

    return maxLength
}

//Time  → O(n)
//Space → O(n)
