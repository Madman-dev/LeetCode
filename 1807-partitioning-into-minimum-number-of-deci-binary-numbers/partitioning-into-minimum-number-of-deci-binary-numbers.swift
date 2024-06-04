class Solution {
    func minPartitions(_ n: String) -> Int {
        var array = Array(n)
        var result = 0

        for i in array {
            if result < Int(String(i))! {
                result = Int(String(i))!
                print("result", result)
            }
        }
        return result
    }
}