class Solution {
    func scoreOfString(_ s: String) -> Int {
        var result: Int = 0
        var prev: Int = 0

        // convert to ASCII
        for char in s {
            let ascii = Int(char.asciiValue!)
            print(ascii)
            if prev > 0 {
                // make value positive
                let value = abs(ascii - prev)
                result += value
            }
            prev = ascii //101
        }
        
        return result
    }
}