package main

import "fmt"

func main() {
	nums := []int{2, 7, 11, 15}
	target := 9

	result := twoSum(nums, target)
	fmt.Println(result)
}

// Second solution
func twoSum(nums []int, target int) []int {
	result := make([]int, 0)

	for i := 0; i < len(nums)-1; i++ {
		for j := i + 1; j < len(nums); j++ {
			if nums[i]+nums[j] == target {
				result = append(result, i)
				result = append(result, j)
				return result
			}
		}
	}

	return result
}

// First solution
func twoSum1(nums []int, target int) []int {
	result := make([]int, 0)

	for i := 0; i < len(nums)-1; i++ {
		if nums[i]+nums[i+1] == target {
			result = append(result, i)
			result = append(result, i+1)
		}
	}
	return result
}