//: Playground - noun: a place where people can play

import UIKit

/**
 Add Strings
 
 Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.
 
 Note:
 
 The length of both num1 and num2 is < 5100.
 Both num1 and num2 contains only digits 0-9.
 Both num1 and num2 does not contain any leading zero.
 You must not use any built-in BigInteger library or convert the inputs to integer directly.
 **/

class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var result = ""
        var carry = 0
        var i = 1
        let count = (num1.count >= num2.count ? num1.count : num2.count)
        while i <= count {
            let numOne = i <= num1.count ? String(num1[num1.index(num1.endIndex, offsetBy: -i)]) : "0"
            let numTwo = i <= num2.count ? String(num2[num2.index(num2.endIndex, offsetBy: -i)]) : "0"
            let tmp = Int(numOne)! + Int(numTwo)! + carry
            if tmp >= 10 {
                carry = 1
            } else {
                carry = 0
            }
            
            result.append(String(tmp % 10))
            
            i += 1
        }
        
        if carry == 1 {
            result.append("1")
        }
        
        return String(result.reversed())
    }
}
