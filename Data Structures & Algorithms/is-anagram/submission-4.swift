class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var hashTable: [Character: Int] = [:]
        for (charS, charT) in zip(s, t) {
            hashTable[charS, default: 0] += 1
            hashTable[charT, default: 0] -= 1
        }
        for value in hashTable.values {
            if value != 0 {
                return false
            }
        }
        return true
    }
}
