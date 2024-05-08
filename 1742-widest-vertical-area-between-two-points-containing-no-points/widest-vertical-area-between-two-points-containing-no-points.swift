class Solution {
    func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
        let sorted = points.map { $0[0] }.sorted()
        var maxWidth: Int = 0

        for value in 1..<sorted.count {
            maxWidth = max(maxWidth, sorted[value] - sorted[value-1])
        }
        return maxWidth
    }
}