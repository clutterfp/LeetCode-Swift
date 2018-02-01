//: Playground - noun: a place where people can play

import UIKit

/**
 Single Number
 
 Given an array of integers, every element appears twice except for one. Find that single one.
 
 Note:
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 **/

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        var index = 0
        while index < sortedNums.count - 1 {
            if (sortedNums[index] == sortedNums[index + 1]) {
                index += 1
            } else {
                return sortedNums[index]
            }
            
            index += 1
        }
        
        return sortedNums[sortedNums.count - 1]
    }
}
