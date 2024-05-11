class Solution {
    func countPairs(_ nums: [Int], _ target: Int) -> Int {

        var counter: Int = 0
        for i in 0..<nums.count {
            for j in 0..<i {
                if nums[i] + nums[j] < target {
                    counter+=1
                }
            }
        }
        return counter
    }
}