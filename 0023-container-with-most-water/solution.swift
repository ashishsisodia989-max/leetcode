
func maxArea(_ height: [Int]) -> Int {
    guard height.count > 1 else { return 0 }
    var area = 0
    var left = 0
    var right = height.count - 1
    var width = right - left
    
    while left < right {
        width = right - left
        let minHeight = min(height[left], height[right])
        let newArea = minHeight * width
        
        area = max(area, newArea)
        
        if height[left] < height[right] {
            left += 1
        } else {
            right -= 1
        }
    }
    
    
    return area
}
//Time:  O(n)
//Space: O(1)
