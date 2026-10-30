func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
       var s = Set<Int>()
    
    for i in 0..<nums.count {
        if s.contains(nums[i]) {
             return true
        }
        s.insert(nums[i])
        
        if s.count > k {
            s.remove(nums[i-k])
        }
    }
    
    return false
   }




let nums1 = [1,2,3,1], k1 = 3
print(containsNearbyDuplicate(nums1, k1))
