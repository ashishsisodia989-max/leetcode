func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var windowSum = 0
    
    for i in 0..<k {
        windowSum += nums[i]
    }
    print("First window sum=", windowSum)
    
    var maxSum = windowSum

    for i in k..<nums.count {
        windowSum += nums[i] // add next
        windowSum -= nums[i - k] // subtract first
        maxSum = max(maxSum, windowSum)
    }
    return Double(maxSum) / Double(k)
}
