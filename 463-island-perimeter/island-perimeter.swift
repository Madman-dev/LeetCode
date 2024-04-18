class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var parameter: Int = 0
        var height = grid.count - 1
        var length = grid[0].count - 1

        for island in 0...height {
            for land in 0...length {
                if grid[island][land] == 1{
                    parameter += 4

                    // island and land value HAS to be bigger than 0 to check for adjacent space
                    if island > 0 && grid[island-1][land] == 1{
                        parameter -= 2
                    }

                    if land > 0 && grid[island][land-1] == 1{
                        parameter -= 2
                    }
                }
            }
        }
        return parameter
    }
}