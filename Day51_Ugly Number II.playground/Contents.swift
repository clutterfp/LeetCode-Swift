//: Playground - noun: a place where people can play

import UIKit

/**
 Ugly Number II
 
 Write a program to find the n-th ugly number.
 
 Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 1, 2, 3, 4, 5, 6, 8, 9, 10, 12 is the sequence of the first 10 ugly numbers.
 
 Note that 1 is typically treated as an ugly number, and n does not exceed 1690.
 
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 **/

class Solution {
    func nthUglyNumber(_ n: Int) -> Int {
        var nums = Array(repeatElement(1, count: n))
        var i = 1
        var index2 = 0
        var index3 = 0
        var index5 = 0
        while i < n {
            nums[i] = min(nums[index2] * 2, min(nums[index3] * 3, nums[index5] * 5))
            if nums[i] == nums[index2] * 2 {
                index2 += 1
            }
            
            if nums[i] == nums[index3] * 3 {
                index3 += 1
            }
            
            if nums[i] == nums[index5] * 5 {
                index5 += 1
            }
            
            i += 1
        }
        
        return nums[n - 1]
    }
}
