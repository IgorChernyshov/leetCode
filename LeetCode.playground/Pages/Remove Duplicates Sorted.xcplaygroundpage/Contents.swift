import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
	guard !nums.isEmpty else { return 0 }
	var i = 0

	for j in 1..<nums.count {
		guard nums[i] != nums[j] else { continue }
		i += 1
		nums[i] = nums[j]
	}
	return i + 1
}

func removeDuplicates2(_ nums: inout [Int]) -> Int {
	var firstPointer = 0
	var secondPointer = 1
	var uniqueElements = 1

	while secondPointer < nums.count {
		if nums[firstPointer] != nums[secondPointer] {
			firstPointer += 1
			uniqueElements += 1
			nums[firstPointer] = nums[secondPointer]
		}
		secondPointer += 1
	}

	return uniqueElements
}

var input = [0,0,1,1,1,2,2,3,3,4]
removeDuplicates2(&input)
print(input)
