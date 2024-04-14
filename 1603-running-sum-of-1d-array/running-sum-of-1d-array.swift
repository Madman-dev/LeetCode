class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sum: Int = 0
        var result: [Int] = []

        for n in nums {
            sum += n
            result.append(sum)
        }
        return result
    }
}