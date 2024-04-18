class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        let height = grid.count
        let length = grid[0].count

        var parameter: Int = 0

        for x in 0..<height {
            for y in 0..<length where grid[x][y] == 1 {
                parameter += 4

                if x > 0 && grid[x - 1][y] == 1 {
                    parameter -= 2
                }

                if y > 0 && grid[x][y-1] == 1 {
                    parameter -= 2
                }
            }
        }
        return parameter
    }
}