package main

import (
	"fmt"
	"sort"
	"strings"
)

func groupAnagrams(strs []string) [][]string {
	dict := make(map[string][]string)

	for _, str := range strs {
		chars := strings.Split(str, "")
		sort.Strings(chars)

		key := strings.Join(chars, "")

		dict[key] = append(dict[key], str)
	}

	result := make([][]string, 0, len(dict))

	for _, group := range dict {
		result = append(result, group)
	}

	return result
}

func groupAnagramsUsingHash(strs []string) [][]string {
	dict := make(map[[26]int][]string)

	for _, str := range strs {

		var countArray [26]int

		fmt.Println("Count Array Before for str:", countArray)

		for _, char := range str {
			index := char - 'a'
			countArray[index]++
		}

		fmt.Println("Count Array After for str:", countArray)

		dict[countArray] = append(dict[countArray], str)
	}

	result := make([][]string, 0, len(dict))

	for _, group := range dict {
		result = append(result, group)
	}

	return result
}
