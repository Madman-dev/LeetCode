class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var count: Int = 0
        
        // index 범위를 넘지 않기 위함
        for num in 0..<nums.count {
            // 본인 값을 제외하기 위해 num보다 적게 적용
            for value in 0..<num {
                // 본인 index를 제외한 값끼리 비교, pair 검색
                if nums[num] == nums[value] {
                    count += 1
                }
            }
        }
        return count
    }
}