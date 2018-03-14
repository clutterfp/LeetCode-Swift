//: Playground - noun: a place where people can play

import UIKit

/**
 Find All Duplicates in an Array
 
 Given an array of integers, 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.
 
 Find all the elements that appear twice in this array.
 
 Could you do it without extra space and in O(n) runtime?
 
 Example:
 Input:
 [4,3,2,7,8,2,3,1]
 
 Output:
 [2,3]
 **/

class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var list = [Int]()
        let sortedNum = nums.sorted()
        var i = 0
        while i < sortedNum.count - 1 {
            if sortedNum[i] == sortedNum[i + 1] {
                list.append(sortedNum[i])
                i += 1
            }
            
            i += 1
        }
        
        return list
    }
}
