//: Playground - noun: a place where people can play

import UIKit

/**
 Max Consecutive Ones
 
 Given a binary array, find the maximum number of consecutive 1s in this array.
 
 Example 1:
 Input: [1,1,0,1,1,1]
 Output: 3
 Explanation: The first two digits or the last three digits are consecutive 1s.
 The maximum number of consecutive 1s is 3.
 Note:
 
 The input array will only contain 0 and 1.
 The length of input array is a positive integer and will not exceed 10,000
 **/

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var max = 0
        var count = 0
        var i = 0
        while i < nums.count {
            let num = nums[i]
            if num == 1 {
                count += 1
                
                if i == nums.count - 1 {
                    if count > max {
                        max = count
                    }
                }
            } else {
                if count > max {
                    max = count
                }
                
                count = 0
            }
            
            i += 1
        }
        
        
        return max
    }
}
