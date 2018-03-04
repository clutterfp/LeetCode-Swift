//: Playground - noun: a place where people can play

import UIKit

/**
 Find All Numbers Disappeared in an Array
 
 Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.
 
 Find all the elements of [1, n] inclusive that do not appear in this array.
 
 Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.
 
 Example:
 
 Input:
 [4,3,2,7,8,2,3,1]
 
 Output:
 [5,6]
 **/

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        let numsSet = Set(nums)
        var i = 1
        var result = Set<Int>()
        while i <= nums.count {
            result.insert(i)
            i += 1
        }
        
        return Array(result.symmetricDifference(numsSet))
    }
}
