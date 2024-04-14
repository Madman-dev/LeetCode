class Solution {
    func scoreOfString(_ s: String) -> Int {
        var result: Int = 0
        var prev: Int = 0

        // convert to ASCII
        for char in s {
            let ascii = Int(char.asciiValue!)

            if prev > 0 {
                // make value positive
                let value = abs(prev - ascii)
                result += value
            }
            prev = ascii
        }
        
        return result
    }
}