func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.isEmpty { return -1 }
    if needle.count > haystack.count { return -1 }
    
    let bArray = Array(haystack)
    let sArray = Array(needle)
    
    let bigLen = haystack.count
    let smallLen = needle.count
    
    for i in 0...(bigLen - smallLen) {
        var j = 0
        
        while j < smallLen && bArray[i + j] == sArray[j] {
            j += 1
        }
        if j == smallLen {
            return i
        }
    }
    
    return -1
    }

let haystack = "edsadbutsad"
let needle = "sad"

print(strStr(haystack, needle))


//Time: O(n × m)
//Space: O(n + m) because we convert the strings to arrays.
