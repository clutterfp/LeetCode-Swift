//: Playground - noun: a place where people can play

import UIKit

/**
 House Robber
 
 You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security system connected and it will automatically contact the police if two adjacent houses were broken into on the same night.
 
 Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.
 
 Credits:
 Special thanks to @ifanchu for adding this problem and creating all test cases. Also thanks to @ts for adding additional test cases.
 **/

class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }
        
        var a = 0
        var b = 0
        for i in 0...nums.count - 1 {
            if i % 2 == 0 {
                a = max(a + nums[i], b)
            } else {
                b = max(a, b + nums[i])
            }
        }
        
        return max(a, b)
    }
}
