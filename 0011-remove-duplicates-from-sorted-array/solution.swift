func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.isEmpty {
        return 0
    }
    var k = 1
    
    for i in 1..<nums.count {
        print("Before nums", nums)
        if nums[i] != nums[i - 1] {
            nums[k] = nums[i]
            k += 1
        }
        print("After nums", nums)
    }
    return k
}
//Time:  O(n)
//Space: O(1)
