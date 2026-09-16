class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let sSorted = String(Array(s).sorted())
        let tSorted = String(Array(t).sorted())
        return sSorted == tSorted
    }
}
