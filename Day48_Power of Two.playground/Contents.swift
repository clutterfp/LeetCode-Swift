//: Playground - noun: a place where people can play

import UIKit

/**
 Power of Two
 
 Given an integer, write a function to determine if it is a power of two.
 
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 **/

class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if (n <= 0) {
            return false
        } else {
            return pow(2.0, Double(Int(log2(Double(n))))) == Double(n)
        }
    }
}
