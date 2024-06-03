class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let largest = findLargestCandyNumber(candies)
        var result = [Bool]()
        
        // 애들별로 사탕 수 확인
        for (kid, candy) in candies.enumerated() {
            // print("어린이", kid)
            // print("사탕", candy)
            
            var candyNumber = candy
            // 개인별로 extra를 주고
            candyNumber += extraCandies

            // 합친 값이 다른 candy 중에서 가장 큰 값인지 확인
            if candyNumber >= largest {
                // result에 추가
                result.append(true)
            } else {
                result.append(false)
            }
        }
        // boolean 값 전달
        return result
    }

    func findLargestCandyNumber(_ candies: [Int]) -> Int {
        var largest: Int = 0

        for candy in candies {
            if largest <= candy {
                largest = candy
            }
        }
        return largest
    }
}