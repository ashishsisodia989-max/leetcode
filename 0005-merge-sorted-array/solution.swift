class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        let m1 = nums1.prefix(m)
        let n1 = nums2.prefix(n)
        print(m1, n1)
        nums1 = Array(m1) + Array(n1)
        nums1.sort(by: <)
    }
    
    func merge2(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        var i = m - 1          // Last valid element in nums1
        var j = n - 1          // Last element in nums2
        var k = m + n - 1      // Last position in nums1
        
        while i >= 0 && j >= 0 {
            if nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i -= 1
            } else {
                nums1[k] = nums2[j]
                j -= 1
            }
            k -= 1
        }
        
        while j >= 0 {
            nums1[k] = nums2[j]
            j -= 1
            k -= 1
        }
        print("res:-", nums1)
    }
}
