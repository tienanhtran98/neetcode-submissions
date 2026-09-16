class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var hashing: Set<Int> = .init()
        for i in nums {
            if hashing.contains(i) {
                return true
            } else {
                hashing.insert(i)
            }
        }
        return false
    }
}
