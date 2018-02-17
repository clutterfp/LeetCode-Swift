//: Playground - noun: a place where people can play

import UIKit

/**
 Move Zeroes
 
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 
 For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].
 
 Note:
 You must do this in-place without making a copy of the array.
 Minimize the total number of operations.
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 **/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var i = nums.count - 1
        for num in nums.reversed() {
            if num == 0 {
                nums.remove(at: i)
                nums.append(0)
            }
            
            i -= 1
        }
    }
}
