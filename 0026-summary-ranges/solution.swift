
func summaryRanges(_ nums: [Int]) -> [String] {
    
    if nums.isEmpty {
        return []
    }
    
    var result: [String] = []
    var start = 0
    
    for i in 1...nums.count {
        if i == nums.count || (nums[i] - nums[i - 1] > 1) {
            
            if start == i - 1 {
                result.append("\(nums[start])")
            } else {
                result.append("\(nums[start])->\(nums[i - 1])")
            }
            
            start = i
        }
    }
    
    return result
}


let nums = [0,2,3,4,6,8,9]
print(summaryRanges(nums))
