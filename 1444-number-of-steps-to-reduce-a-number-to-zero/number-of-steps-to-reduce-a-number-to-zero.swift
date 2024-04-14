class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var counter = 0
        var result = num

        while result >= 1 {
            let isDivisable: Bool = result % 2 == 0

            if isDivisable {
                result /= 2
                counter += 1
            } else {
                result -= 1
                counter += 1
            }
        }

        return counter
    }
}