class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for x in 0..<nums.count {
            for z in x+1..<nums.count {
                if nums[x] + nums[z] == target {
                    return [x, z]
                }
            }
        }
        return []
    }
}