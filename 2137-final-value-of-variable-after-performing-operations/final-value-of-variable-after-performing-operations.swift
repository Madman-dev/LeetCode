class Solution {
    var value: Int = 0
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        for operation in operations {
            operation == "++X" || operation == "X++" ? (value += 1) : (value -= 1)
        }
        return value
    }
}