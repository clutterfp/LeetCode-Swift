//: Playground - noun: a place where people can play

import UIKit

/**
 Add Binary
 
 Given two binary strings, return their sum (also a binary string).
 
 For example,
 a = "11"
 b = "1"
 Return "100".
 **/

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var s1 = a
        var s2 = b
        var s3 = ""
        var carry = 0
        
        while s1.count > 0 && s2.count > 0 {
            let num = Int(String.init(s1.last!))! + Int(String.init(s2.last!))! + carry
            let c = String(num % 2)
            carry = num / 2
            s3 = c + s3
            s1.removeLast();
            s2.removeLast();
        }
        
        while s1.count > 0 {
            let num = Int(String.init(s1.last!))! + carry
            let c = String(num % 2)
            carry = num / 2
            s3 = c + s3
            s1.removeLast();
        }
        
        while s2.count > 0 {
            let num = Int(String.init(s2.last!))! + carry
            let c = String(num % 2)
            carry = num / 2
            s3 = c + s3
            s2.removeLast();
        }
        
        
        if carry > 0 {
            s3 = "1" + s3
        }
        
        return s3
    }
}

