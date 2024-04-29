class Solution {
    func romanToInt(_ s: String) -> Int {
        let dict: [Character: Int] = [
            "I": 1, "V": 5, "X": 10, "L": 50, "C":  100, "D": 500, "M": 1000
        ]
        var result = 0
        var prev = 0

        for value in s {
            let nonOptional = dict[value] ?? 0

            if nonOptional <= prev {
                result += prev
                print(result)
            
            } else {
                result -= prev
            }
            prev = nonOptional
        }
        result += prev
        return result
    }
}