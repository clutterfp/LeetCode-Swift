//: Playground - noun: a place where people can play

import UIKit

/**
 Majority Element
 
 Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 
 You may assume that the array is non-empty and the majority element always exist in the array.
 
 Credits:
 Special thanks to @ts for adding this problem and creating all test cases.
 **/

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var map = [Int : Int]()
        for num in nums {
            map[num] = (map[num] ?? 0) + 1
            
            if map[num]! > nums.count / 2 {
                return num
            }
        }
        
        return 0
    }
}
