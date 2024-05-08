class Solution {
    func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
        let newPoint = points.map { $0[0] }.sorted(by: >)
        var widest: Int = 0
        var prev: Int = 0

        for point in newPoint {
            var value = prev - point
            if value > widest {
                widest = value
            }
            prev = point
        }
        return widest
    }
}