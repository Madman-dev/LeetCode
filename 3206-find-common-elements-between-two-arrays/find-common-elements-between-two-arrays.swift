class Solution {
    func findIntersectionValues(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result: [Int] = []
        var count: Int = 0
        // go through each value in num1 & num2
        // check if values are inside each arrays

        for num in nums1 {
            if nums2.contains(num) {
                count += 1
            }
        }
        result.append(count)
        count = 0

        for num in nums2 {
            if nums1.contains(num) {
                count += 1
            }
        }
        result.append(count)
        return result
    }
}