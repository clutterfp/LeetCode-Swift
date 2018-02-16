//: Playground - noun: a place where people can play

import UIKit

/**
 Add Digits
 
 Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.
 
 For example:
 
 Given num = 38, the process is like: 3 + 8 = 11, 1 + 1 = 2. Since 2 has only one digit, return it.
 
 Follow up:
 Could you do it without any loop/recursion in O(1) runtime?
 
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 **/

class Solution {
    func addDigits(_ num: Int) -> Int {
        if num < 10 {
            return num
        } else {
            let result = addDigits(num / 10) + num % 10
            if result < 10 {
                return result
            } else {
                return addDigits(result / 10) + result % 10
            }
        }
    }
}
