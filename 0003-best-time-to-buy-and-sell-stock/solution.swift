
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        let input = [7,1,5,3,6,4]
        var diff = 0
        for i in 0..<input.count {
            for j in i+1..<input.count {
                let currentDiff = input[j] - input[i]
                if currentDiff > diff {
                    diff = currentDiff
                }
            }
        }
        return diff
    }
//    Time Complexity: O(n²) || Space Complexity: O(1)
    
    func maxProfitOptimized(_ prices: [Int]) -> Int {
        var minPrice = prices[0]
        var maxProfit = 0
        
        for price in prices {
            if price < minPrice {
                minPrice = price
            } else {
                let profit = price - minPrice
                if profit > maxProfit {
                    maxProfit = profit
                }
            }
        }
        return maxProfit
    }
}
//Time: n × O(1) = O(n) || Space: O(1)
