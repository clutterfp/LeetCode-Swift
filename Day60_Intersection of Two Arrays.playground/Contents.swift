//: Playground - noun: a place where people can play

import UIKit

/**
 Intersection of Two Arrays
 
 Given two arrays, write a function to compute their intersection.
 
 Example:
 Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].
 
 Note:
 Each element in the result must be unique.
 The result can be in any order.
 **/

class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var set1 = Set<Int>()
        var set2 = Set<Int>()
        for num1 in nums1 {
            set1.insert(num1)
        }
        
        for num2 in nums2 {
            set2.insert(num2)
        }
        
        return Array(set1.intersection(set2))
    }
}
