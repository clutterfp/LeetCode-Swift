//: Playground - noun: a place where people can play

import UIKit

/**
 Ugly Number
 
 Write a program to check whether a given number is an ugly number.
 
 Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.
 
 Note that 1 is typically treated as an ugly number.
 
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 **/

class Solution {
    func isUgly(_ num: Int) -> Bool {
        if num <= 0 {
            return false
        } else if num == 1 {
            return true
        } else {
            var n = num
            while n % 2 == 0 || n % 3 == 0 || n % 5 == 0 {
                if n == 2 || n == 3 || n == 5 {
                    return true
                }
                
                if n % 2 == 0 {
                    n = n / 2
                } else if n % 3 == 0 {
                    n = n / 3
                } else {
                    n = n / 5
                }
            }
            
            return false
        }
    }
}
