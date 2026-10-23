class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var numSet: Set<Int> = Set()
         for item in nums {
          if numSet.insert(item).inserted {
            continue
          } else {
            return true
          }
         }
         return false
    }
}
