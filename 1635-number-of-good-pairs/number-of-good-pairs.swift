class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        // get the index for each pair
        // check if pair
        // return good

        var count: Int = 0
        
        // index 범위를 넘지 않기 위함
        for num in 0..<nums.count {
            // 본인 값은 제외할 수 있도록?
            for value in 0..<num {
                if nums[num] == nums[value] {
                    count += 1
                }
            }
        }
        return count
    }
}