class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
         guard s.count == t.count else  { return false }
         var count: [Character: Int] = [:]
         
         for ch in s {
            count[ch, default: 0] += 1
         }

        for ch in t {
            count[ch, default: 0] -= 1
            if count[ch]! < 0 {
                return false 
            }
        }

        return true
    }
}
