//: Playground - noun: a place where people can play

import UIKit

/**
 Remove Duplicates from Sorted Array
 
 Given a sorted array, remove the duplicates in-place such that each element appear only once and return the new length.
 
 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 
 Example:
 Given nums = [1,1,2],
 Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
 It doesn't matter what you leave beyond the new length.
 **/

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty {
            return 0;
        } else {
            var current = nums[nums.count - 1]
            var count = 1
            var first = true
            for num in nums.reversed() {
                if num < current {
                    current = num
                    count += 1
                } else {
                    if !first {
                        nums.remove(at: nums.count - count)
                    } else {
                        first = false
                    }
                }
            }
            
            return nums.count
        }
    }
}
