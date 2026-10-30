
func moveZeroes(_ nums: inout [Int]) {
//    [0,1,0,3,12]
    var zeroIndex = 0
    for i in 0..<nums.count {
        let j = i + 1
        if j < nums.count {
            if nums[i] == 0 && nums[j] != 0 {
                nums[zeroIndex] = nums[j]
                nums[j] = 0
                zeroIndex += 1
            } else if nums[i] != 0 {
                zeroIndex += 1
            }
        }
    }
    
    print(nums)
}

var nums = [0,1,0,3,12]
moveZeroes(&nums)
