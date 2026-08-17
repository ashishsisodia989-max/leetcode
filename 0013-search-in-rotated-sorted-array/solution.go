package main

func search(nums []int, target int) int {
	res := -1

	if len(nums) == 0 {
		return res
	}

	left := 0
	right := len(nums) - 1

	for left <= right {

		mid := left + (right-left)/2

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
