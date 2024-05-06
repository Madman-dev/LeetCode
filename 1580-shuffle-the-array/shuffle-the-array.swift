class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var array = [Int]()

        for i in 0..<n {
            // 첫 값을 먼저 담는다.
            array.append(nums[i])

            // 첫 값에서 떨어진 값
            array.append(nums[i + n])
        }

        return array
    }
}