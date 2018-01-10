//: Playground - noun: a place where people can play

import UIKit

/**
 Maximum Subarray
 
 Find the contiguous subarray within an array (containing at least one number) which has the largest sum.
 
 For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
 he contiguous subarray [4,-1,2,1] has the largest sum = 6.
 **/

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return 0
        } else {
            var sum = 0
            var max = nums[0]
            for num in nums {
                sum = sum + num
                if sum < num {
                    sum = num
                }
                
                if max < sum {
                    max = sum
                }
            }
            
            return max
        }
    }
}
