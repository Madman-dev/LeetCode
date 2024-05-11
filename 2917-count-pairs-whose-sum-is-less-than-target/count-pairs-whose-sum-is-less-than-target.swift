class Solution {
    func countPairs(_ nums: [Int], _ target: Int) -> Int {
        var sorted = nums.sorted()
        var counter: Int = 0
        var left = 0
        var right = nums.count - 1

        while left < right {
            if sorted[left] + sorted[right] < target {
                counter += right - left
                left += 1
            } else {
                right -= 1
            }
        }
        return counter
    }
}