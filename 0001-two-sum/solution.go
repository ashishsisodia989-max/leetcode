package main

import "fmt"

func twoSum(nums []int, target int) []int {
	for n := 0; n < len(nums)-1; n++ {
		for m := 1; m < len(nums); m++ {
			if nums[n]+nums[m] == target {
				fmt.Println(nums[n], nums[m])
				return []int{n, m}
			}
		}
	}
	return []int{}
}

func twoSum2(nums []int, target int) []int {
	hashMap := make(map[int]int)

	for i, num := range nums {
		complement := target - num

		if index, found := hashMap[complement]; found {
			return []int{index, i}
		}
		hashMap[num] = i
	}

	return []int{}
}

func main() {
	num := []int{2, 7, 11, 15}
	target := 9

	result := twoSum(num, target)
	result2 := twoSum2(num, target)
	fmt.Println(result)
	fmt.Println(result2)
}
