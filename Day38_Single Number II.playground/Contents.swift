//: Playground - noun: a place where people can play

import UIKit

/**
 Single Number II
 
 Given an array of integers, every element appears three times except for one, which appears exactly once. Find that single one.
 
 Note:
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 **/

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        var index = 0
        while index < sortedNums.count - 2 {
            if (sortedNums[index] == sortedNums[index + 1] && sortedNums[index] == sortedNums[index + 2]) {
                index += 2
            } else {
                return sortedNums[index]
            }
            
            index += 1
        }
        
        return sortedNums[sortedNums.count - 1]
    }
}
