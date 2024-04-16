class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var ans: [Int] = []

        while ans.count < (2*nums.count) {
            for num in nums {
                ans.append(num)
            }
        }
        return ans
    }
}