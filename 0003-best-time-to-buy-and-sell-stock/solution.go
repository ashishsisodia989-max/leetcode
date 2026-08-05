func maxProfit(prices []int) int {
	diff := 0

	for i := 0; i < len(prices)-1; i++ {

		for j := i + 1; j < len(prices); j++ {
			if prices[j]-prices[i] > diff {
				diff = prices[j] - prices[i]
			}
		}
	}
	return diff
}

func maxProfitOptimized(prices []int) int {
	minPrice := math.MaxInt
	maxProfit := 0

	for _, price := range prices {
		if price < minPrice {
			minPrice = price
		} else if price-minPrice > maxProfit {
			maxProfit = price - minPrice
		}
	}
	return maxProfit
}