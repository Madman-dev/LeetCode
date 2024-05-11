class Solution {
    func countPairs(_ nums: [Int], _ target: Int) -> Int {

        var counter: Int = 0
        for (index, num) in nums.enumerated() {
            for j in 0..<index {
                if nums[index] + nums[j] < target {
                    counter+=1
                }
            }
        }
        return counter
    }
}