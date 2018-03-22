//: Playground - noun: a place where people can play

import UIKit

/**
 Subsets
 
 Given a set of distinct integers, nums, return all possible subsets (the power set).
 
 Note: The solution set must not contain duplicate subsets.
 
 For example,
 If nums = [1,2,3], a solution is:
 
 [
 [3],
 [1],
 [2],
 [1,2,3],
 [1,3],
 [2,3],
 [1,2],
 []
 ]
 **/

class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        result.append([])
        for num in nums {
            for r in result {
                var temp = r
                temp.append(num)
                result.append(temp)
            }
        }
        
        return result
    }
}

