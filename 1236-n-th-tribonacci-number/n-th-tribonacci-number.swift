class Solution {
    func tribonacci(_ n: Int) -> Int {
        // 4번째 숫자는 앞서 3개를 더한 값, 해당 값을 찾아야한다.

        // 첫번째는 0이며, 3번째까지 값은 1이다.
        guard n > 0 else { return 0 }
        guard n > 2 else { return 1 }
        
        var first: Int = 0
        var second: Int = 1
        var third: Int = 1

        for i in 3...n {
            let sum = first + second + third
            first = second
            second = third
            third = sum
        }
        return third
    }
}