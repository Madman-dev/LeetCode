class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var copy = magazine

        for letter in ransomNote {
            if let index = copy.firstIndex(of: letter) {
                copy.remove(at: index)
            } else {
                return false
            }
        }
        return true
    }
}