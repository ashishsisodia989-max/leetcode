func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dict: [String: [String]] = [:]
    
    for str in strs {
        let key = String(str.sorted())
        
        dict[key, default: []].append(str)
    }
    
    return dict.values.map { $0 }
}
//n = number of strings
//k = maximum length of a string
//Time:  O(n × k log k)
//Space: O(n × k)

func groupAnagramsUsingHash(_ strs: [String]) -> [[String]] {
    var dict: [[Int]: [String]] = [:]
    
    for str in strs {
        var countArray = Array(repeating: 0, count: 26)
        print("Count Array Before or str: \(countArray)")
        
        for char in str {
            let index = Int(char.asciiValue! - Character("a").asciiValue!)
            countArray[index] += 1
        }
        print("Count Array After or str: \(countArray)")
        dict[countArray, default: []].append(str)
    }
    
    return Array(dict.values)
}

//Time:  O(n × k)
//Space: O(n × k)
