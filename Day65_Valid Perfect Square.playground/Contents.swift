//: Playground - noun: a place where people can play

import UIKit

/**
 Valid Perfect Square
 
 Given a positive integer num, write a function which returns True if num is a perfect square else False.
 
 Note: Do not use any built-in library function such as sqrt.
 
 Example 1:
 
 Input: 16
 Returns: True
 Example 2:
 
 Input: 14
 Returns: False
 Credits:
 Special thanks to @elmirap for adding this problem and creating all test cases.
 **/

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var i = 1
        var n = num
        while n > 0 {
            n -= i
            i += 2
        }
        
        return n == 0
    }
}
