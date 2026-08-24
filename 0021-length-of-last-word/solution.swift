
func lengthOfLastWord(_ s: String) -> Int {
    let characters = Array(s)
    var count = 0
    var i = characters.count - 1

    // Skip trailing spaces
    while i >= 0 && characters[i] == " " {
        i -= 1
    }

    // Count characters of the last word
    while i >= 0 && characters[i] != " " {
        count += 1
        i -= 1
    }

    return count
}
