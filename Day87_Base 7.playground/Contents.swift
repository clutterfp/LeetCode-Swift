//: Playground - noun: a place where people can play

import UIKit

/**
 Base 7
 
 Given an integer, return its base 7 string representation.
 
 Example 1:
 Input: 100
 Output: "202"
 
 Example 2:
 Input: -7
 Output: "-10"
 
 Note: The input will be in range of [-1e7, 1e7].
 **/

class Solution {
    func convertToBase7(_ num: Int) -> String {
        var result = ""
        var positive = abs(num)
        
        while positive > 0 {
            result.append(String(positive % 7))
            positive = positive / 7
        }
        
        if num < 0 {
            result.append("-")
        } else if num == 0 {
            result.append("0")
        }
        
        return String(result.reversed())
    }
}
