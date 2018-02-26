//: Playground - noun: a place where people can play

import UIKit

/**
 Sum of Two Integers
 
 Calculate the sum of two integers a and b, but you are not allowed to use the operator + and -.
 
 Example:
 Given a = 1 and b = 2, return 3.
 
 Credits:
 Special thanks to @fujiaozhu for adding this problem and creating all test cases.
 **/

class Solution {
    func getSum(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        }
        
        let c = a ^ b
        let carry = (a & b) << 1
        return getSum(c, carry)
    }
}
