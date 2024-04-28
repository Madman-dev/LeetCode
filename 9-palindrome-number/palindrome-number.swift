class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        // -#, reverse
        // check if negative
        var reversed: String = ""
        var stringType = String(x)
        guard x >= 0 else { return false }

        for char in stringType {
            reversed.insert(char, at: reversed.startIndex)

            if reversed == stringType {
                return true
            } 
        }
        return false
    }
}