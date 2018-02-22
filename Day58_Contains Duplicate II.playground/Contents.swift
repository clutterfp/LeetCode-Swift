//: Playground - noun: a place where people can play

import UIKit

/**
 Contains Duplicate II
 
 Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.
 **/

class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var map = [Int : Int]()
        var i = 0
        while i < nums.count {
            if map.keys.contains(nums[i]) {
                if (i - map[nums[i]]! <= k) {
                    return true
                }
            }
            
            map[nums[i]] = i
            
            i += 1
        }
        
        return false
    }
}
