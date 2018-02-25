//: Playground - noun: a place where people can play

import UIKit

/**
 Intersection of Two Arrays II
 
 Given two arrays, write a function to compute their intersection.
 
 Example:
 Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].
 
 Note:
 Each element in the result should appear as many times as it shows in both arrays.
 The result can be in any order.
 Follow up:
 What if the given array is already sorted? How would you optimize your algorithm?
 What if nums1's size is small compared to nums2's size? Which algorithm is better?
 What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?
 **/

class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        var nums = nums2
        for num1 in nums1 {
            if nums.contains(num1) {
                result.append(num1)
                nums.remove(at: nums.index(of: num1)!)
            }
        }
        
        return result
    }
}
