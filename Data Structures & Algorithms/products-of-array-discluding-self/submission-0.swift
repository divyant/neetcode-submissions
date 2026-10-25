class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var n = nums.count 
        var output = [Int](repeating: 1, count: n)
        //left pass
         for i in 1..<n {
          output[i] = output[i - 1] * nums[i - 1]
         }
         
         //right pass
         var result = 1
         for i in stride(from: n - 1, through: 0, by: -1) {
           output[i] *= result
           result *= nums[i]
         }
        return output
    }
}
