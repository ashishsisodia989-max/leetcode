func addBinary(_ a: String, _ b: String) -> String {
    var result = ""
    
    let aChars = Array(a)
    let bChars = Array(b)
    
    var carry = 0
    
    var i = aChars.count - 1
    var j = bChars.count - 1
    
    while i >= 0 || j >= 0 || carry > 0 {
        var sum = carry
    
        if i >= 0 {
            sum += Int(String(aChars[i]))!
            i -= 1
        }
        
        if j >= 0 {
            sum += Int(String(bChars[j]))!
            j -= 1
        }
        
        result = String(sum % 2) + result
        carry = sum / 2
    }
    
    return result
}
let a = "1010", b = "1011"
print(addBinary(a, b)) // Output: "10101"

