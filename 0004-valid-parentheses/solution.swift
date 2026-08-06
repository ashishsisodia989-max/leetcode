class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        
        let pairs: [Character: Character] = [
            ")": "(",
            "]": "[",
            "}": "{"
        ]
        for char in s {
            switch char {
            case "(", "[", "{":
                stack.append(char)
            case ")", "]", "}":
                if let expected = pairs[char] {
                    if stack.isEmpty {
                        return false
                    }
                    let last = stack.removeLast()
                    if last != expected {
                        return false
                    }
                }
            default:
                return false
            }
        }
        return stack.isEmpty
    }
}
