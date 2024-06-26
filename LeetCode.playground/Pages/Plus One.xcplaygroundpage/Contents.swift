import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
	var digits = digits

	for i in (0..<digits.count).reversed() {
		guard digits[i] == 9 else {
			digits[i] += 1
			return digits
		}
		digits[i] = 0
	}

	digits.insert(1, at: 0)
	return digits
}


plusOne([1,2,3]) // [1, 2, 4]
plusOne([4,3,2,1]) // [[4, 3, 2, 2]
plusOne([9]) // [1, 0]
plusOne([1,9]) // [2, 0]
