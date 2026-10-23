class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {

        var frequencyMap = [Int: Int]()
        let n = nums.count
        var bucket = [[Int]](repeating:[], count: n + 1)
        for i in 0..<n {
            frequencyMap[nums[i], default: 0] += 1
            
        }

        for (val, freq) in frequencyMap {
            bucket[freq].append(val)
        }

        var result = [Int]()

        for i in stride(from: nums.count, through: 1, by: -1) {
            for val in bucket[i] {
              result.append(val)
             if result.count == k { return result }
            }
        
        }
        return result
    }
}
