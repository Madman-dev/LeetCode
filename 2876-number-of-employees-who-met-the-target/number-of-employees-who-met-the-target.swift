class Solution {
    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
        // 확인하는 counter
        var counter: Int = 0
        // for문으로 재귀 확인
        for hour in hours { 
            if hour >= target {
                counter += 1
            }
        }
        return counter
    }
}