class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var copy = nums
        var answer = 0
        
        for num in nums.sorted() {
            let prev = copy.removeFirst()

            if copy.contains(prev) {
                copy.append(prev)
            } else {
                answer += prev
            }
        }
        return answer
    }
}