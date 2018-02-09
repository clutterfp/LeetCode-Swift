//: Playground - noun: a place where people can play

import UIKit

/**
 Contains Duplicate
 
 Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
 **/

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var i = 0
        var sortedNums = nums.sorted()
        while i < sortedNums.count - 1 {
            if sortedNums[i] == sortedNums[i + 1] {
                return true
            }
            i += 1
        }
        
        return false
    }
}
