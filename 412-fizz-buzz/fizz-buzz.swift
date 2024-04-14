class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        return (1...n).map { num in
        let byThree = num % 3 == 0
        let byFive = num % 5 == 0

        switch (byThree, byFive) {
            case (true, true): return "FizzBuzz"
            case (true, false): return "Fizz"
            case (false, true): return "Buzz"
            case (false, false): return "\(num)"
        }
        }
    }
}