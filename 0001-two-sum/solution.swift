func twoSum_1(_ nums: [Int], _ target: Int) -> [Int] {
    for n in 0..<nums.count-1 {
        for m in 1..<nums.count {
            if nums[n] + nums[m] == target {
                print(nums[n], nums[m]) return [n, m]
            }
        }
    }
    return []
}
//Time Complexity O(n^2) - The algorithm uses two nested loops to iterate through the array, resulting in a quadratic time complexity.
//Space Complexity O(1) - The algorithm uses a constant amount of extra space, regardless of the input size.


func twoSum_best(_ nums: [Int], _ target: Int) -> [Int] {
    var hashMap = [Int: Int]()
    
    for (index, num) in nums.enumerated() {
        let complement = target - num
        if let complementIndex = hashMap[complement] {
            print(nums[complementIndex], nums[index])
            return [complementIndex, index]
        }
        hashMap[num] = index
    }
    return []
}
//Time Complexity O(n) - The algorithm iterates through the array once, resulting in linear time complexity.
//Space Complexity O(n) - The algorithm uses a hash map to store the indices of the

