//: Playground - noun: a place where people can play

import UIKit


/**
 Two Sum
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 **/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        var resultArray = [Int]()
        
        for (index, value) in nums.enumerated() {
            
            if let firstIndex = map[target - value] {
                resultArray.append(firstIndex)
                resultArray.append(index)
                break
            }else {
                map[value] = index
            }
        }
        
        return resultArray
    }
}
