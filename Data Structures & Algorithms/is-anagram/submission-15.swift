class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
    
    // Mảng 26 phần tử, giá trị ban đầu là 0
    var counts = [Int](repeating: 0, count: 26)
    let aAscii = Character("a").asciiValue!
    
    let sArray = Array(s)
    let tArray = Array(t)
    
    for i in 0..<sArray.count {
        // Tăng đếm cho chuỗi s
        counts[Int(sArray[i].asciiValue! - aAscii)] += 1
        // Giảm đếm cho chuỗi t
        counts[Int(tArray[i].asciiValue! - aAscii)] -= 1
    }
    
    // Kiểm tra xem có số nào khác 0 không
    return counts.allSatisfy { $0 == 0 }
    }
}
