package main

func findMaxAverage(nums []int, k int) float64 {
	windowSum := 0

	// First window
	for i := 0; i < k; i++ {
		windowSum += nums[i]
	}

	maxSum := windowSum

	// Slide the window
	for i := k; i < len(nums); i++ {
		windowSum += nums[i]
		windowSum -= nums[i-k]

		if windowSum > maxSum {
			maxSum = windowSum
		}
	}

	return float64(maxSum) / float64(k)
}
