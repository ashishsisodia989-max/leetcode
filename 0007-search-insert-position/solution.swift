/*
Input: nums = [1,3,5,6], target = 5
Output: 2
 
Input: nums = [1,3,5,6], target = 2
Output: 1
 
Input: nums = [1,3,5,6], target = 7
Output: 4
*/
 
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var start = 0 // 0
    var end = nums.count - 1 // 5
    
    while start <= end {
        let mid = start + (end - start) / 2
        if nums[mid] == target {
            return mid
        }
        if target > nums[mid] {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    return start
}
