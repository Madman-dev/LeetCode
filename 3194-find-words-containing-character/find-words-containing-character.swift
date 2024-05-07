class Solution {
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        // 답변 배열 생성
        var result: [Int] = []

        // 단어의 index를 위해 count 활용
        for word in 0..<words.count {
            // 매칭하는 단어 확인
            if words[word].contains(x) {
                // 해당 단어의 index 번호 배열에 삽입
                result.append(word)
            }
        }
        return result
    }
}