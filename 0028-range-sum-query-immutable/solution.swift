
class NumArray {

    var num: [Int]
    init(_ nums: [Int]) {
        num = nums
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        var res = 0
        for i in left...right {
            res += num[i]
        }
        return res
    }
}
