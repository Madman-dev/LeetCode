class Solution {
    func validPalindrome(_ s: String) -> Bool {
        // place s in array and create index values from lowest to highest
        let array = Array(s)
        var lhs = 0, rhs = array.count - 1

        // while both values do not reach the same index...
        while lhs < rhs {
            // if values in both index do not match
            if array[lhs] != array[rhs] {
                return isValid(array, lhs + 1, rhs) || isValid(array, lhs, rhs - 1)
            }

            // move the index values right and left
            lhs += 1
            rhs -= 1
        }
        return true
    }

    // function to recurse through unmatching values in index, therefor it will move 1~2 tops.
    // s is [Character] as we've copied 's' into a [String]
    private func isValid(_ s: [Character], _ l: Int, _ r: Int) -> Bool {
        var lhs = l, rhs = r
        // while the values do not point to the similar index
        while lhs < rhs {
            // if both values do not match, now it returns false
            if s[lhs] != s[rhs] {
                return false
            }

            // if equal, they move on
            lhs += 1
            rhs -= 1
        }
        return true
    }
}