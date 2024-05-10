class Solution {
    func defangIPaddr(_ address: String) -> String {
        // 새로운 배열 생성
        var result = [String]()

        // 각 Character 값 확인해서 배열에 삽입(at back)
        for char in address {
            result.append(String(char))
        }

        // 결과 배열의 index, 값 형식으로 변환, 정리
        for (index, char) in result.enumerated() {
            if char == "." {
                // 해당 값을 index에서 제거
                result.remove(at: index)
                // 해당 위치에 대체 값 input
                result.insert("[.]", at: index)
            }
        }

        return result.joined()
    }
}