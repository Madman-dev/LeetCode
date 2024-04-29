class Solution {
    func romanToInt(_ s: String) -> Int {
        let dict: [Character: Int] = [
            "I": 1, "V": 5, "X": 10, "L": 50, "C":  100, "D": 500, "M": 1000
        ]
        var result = 0
        var prev = 0

        for value in s {
            // creating non-optional value
            let nonOptional = dict[value] ?? 0

            // check if value is smaller than previous
            if nonOptional <= prev {
                result += prev
                print(result)
            
            // check if not
            } else {
                result -= prev
                print("output:", result) // 0 -> -1
            }
            prev = nonOptional
            print("이전 값:", prev) // 1 -> 5
        }
        result += prev
        print("출력 이전 output:", result) // 4
        return result
    }
}