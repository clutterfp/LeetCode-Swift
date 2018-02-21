//: Playground - noun: a place where people can play

import UIKit

/**
 Given an integer, write a function to determine if it is a power of three.
 
 Follow up:
 Could you do it without using any loop / recursion?
 
 Credits:
 Special thanks to @dietpepsi for adding this problem and creating all test cases.
 **/

class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        } else {
            return pow(3, Double(Int(log10(Double(n)) / log10(3)))) == Double(n)
        }
    }
}
