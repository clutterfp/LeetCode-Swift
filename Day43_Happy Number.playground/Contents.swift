//: Playground - noun: a place where people can play

import UIKit

/**
 Happy Number
 
 Write an algorithm to determine if a number is "happy".
 
 A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.
 
 Example: 19 is a happy number
 
 12 + 92 = 82
 82 + 22 = 68
 62 + 82 = 100
 12 + 02 + 02 = 1
 Credits:
 Special thanks to @mithmatt and @ts for adding this problem and creating all test cases.
 **/

class Solution {
    func isHappy(_ n: Int) -> Bool {
        if n >= 0 && n <= 9 {
            if n == 1 || n == 7 {
                return true
            } else {
                return false
            }
        } else {
            var count = 0
            var m = n
            while m > 0 {
                count += (m % 10) * (m % 10)
                m = m / 10
            }
            
            return isHappy(count)
        }
    }
}
