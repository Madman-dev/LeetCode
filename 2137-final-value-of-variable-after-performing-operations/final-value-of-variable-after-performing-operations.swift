class Solution {
    var value: Int = 0
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        for operation in operations {
            checkAndReturnValue(operation: operation)
        }
        return value
    }

    func checkAndReturnValue(operation: String) {
        switch operation {
            case "++X": value += 1
            case "X++": value += 1
            case "--X": value -= 1
            case "X--": value -= 1
            default: return
        }
    }
}