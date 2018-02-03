//: Playground - noun: a place where people can play

import UIKit

/**
 Two Sum II - Input array is sorted
 
 Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.
 
 The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.
 
 You may assume that each input would have exactly one solution and you may not use the same element twice.
 
 Input: numbers={2, 7, 11, 15}, target=9
 Output: index1=1, index2=2
 **/

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        var resultArray = [Int]()
        
        for (index, value) in numbers.enumerated() {
            
            if let firstIndex = map[target - value] {
                resultArray.append(firstIndex + 1)
                resultArray.append(index + 1)
                break
            }else {
                map[value] = index
            }
        }
        
        return resultArray
    }
}
