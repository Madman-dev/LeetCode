class Solution {
    func defangIPaddr(_ address: String) -> String {
        let newIp = address.replacingOccurrences(of: ".", with: "[.]")
        return newIp
    }
}