class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        // two variables to track values
        var fiveDollarBills: Int = 0
        var tenDollarBills: Int = 0

        // iterate to separate the values
        for bill in bills {
            if bill == 5 {
                fiveDollarBills += 1
            } else if bill == 10 {
                if fiveDollarBills > 0 {
                    fiveDollarBills -= 1
                    tenDollarBills += 1
                } else { 
                    return false
                }
            } else {
                // how to return value when 20
                if tenDollarBills > 0 && fiveDollarBills > 0 {
                    fiveDollarBills -= 1
                    tenDollarBills -= 1
                } else if fiveDollarBills >= 3 {
                    fiveDollarBills -= 3
                } else {
                    return false
                }
            }
        }
        return true
    }
}