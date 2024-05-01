class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var answer: [Int] = []
        // nums[nums[index]] is simply nums[item]
        for num in nums {
            answer.append(nums[num])
        }
        return answer
    }
}