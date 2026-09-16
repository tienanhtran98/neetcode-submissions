class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        // Dictionary lưu trữ với Key là Mảng đếm 26 phần tử, Value là mảng các chuỗi Anagram
        var anagramGroups = [[Int]: [String]]()
        
        let aAscii = Character("a").asciiValue!
        
        for str in strs {
            // Tạo mảng 26 phần tử đếm tần suất cho chuỗi hiện tại
            var count = Array(repeating: 0, count: 26)
            
            for char in str {
                let index = Int(char.asciiValue! - aAscii)
                count[index] += 1
            }
            
            // Dùng chính mảng count này làm khoá (Key) để gom nhóm
            anagramGroups[count, default: []].append(str)
        }
        
        // Trả về tất cả các nhóm (các Value của Dictionary)
        return Array(anagramGroups.values)
    }
}
