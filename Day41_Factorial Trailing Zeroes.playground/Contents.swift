//: Playground - noun: a place where people can play

import UIKit

/**
 Factorial Trailing Zeroes
 
 Given an integer n, return the number of trailing zeroes in n!.
 
 Note: Your solution should be in logarithmic time complexity.
 
 Credits:
 Special thanks to @ts for adding this problem and creating all test cases.
 **/

class Solution {
    func trailingZeroes(_ n: Int) -> Int {
        var m = n
        var count = 0
        while m >= 5 {
            m = m / 5
            count += m
        }
        
        return count
    }
}
