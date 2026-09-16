class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
      var hashTable: [Int: Int] = [:]
        for (index, value) in nums.enumerated() {
            let remainingValue = target - value
            if let findIndex = hashTable[remainingValue] {
                return [findIndex, index]
            } else {
                hashTable[value] = index
            }
        }
        return []
    }
}
