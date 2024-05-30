class Solution {
    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        var map = [Int: [Int]]()
        var newMap = [[Int]]()

        // extract the group number
        for i in 0..<groupSizes.count {
            let groupSize = groupSizes[i]
            print(groupSize)

            // place them in groups
            map[groupSize, default: [Int]()].append(i)
            print(map)

            // make sure groupSize is matching
            if map[groupSize]!.count == groupSize {
                newMap.append(map[groupSize]!)
                map[groupSize] = nil
            }
        }
        return newMap
    }
}