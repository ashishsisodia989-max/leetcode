func search(_ nums: [Int], _ target: Int) -> Int {
    var res = -1
    if nums.isEmpty {
        return res
    }
    
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        
        var mid = left + (right - left) / 2
        
        if target == nums[mid] {
            return mid
        }
        
        if nums[left] <= nums[mid] { // left is sorted
            if nums[left] <= target && target < nums[mid] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        
        if nums[mid] <= nums[right] { // right is sorted
            if nums[mid] < target && target <= nums[right] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

    }
    
    return res
}

//Time:  O(log n)
//Space: O(1)
