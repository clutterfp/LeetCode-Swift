//: Playground - noun: a place where people can play

import UIKit

/**
 Count and Say
 
 The count-and-say sequence is the sequence of integers with the first five terms as following:
 1.     1
 2.     11
 3.     21
 4.     1211
 5.     111221
 
 1 is read off as "one 1" or 11.
 11 is read off as "two 1s" or 21.
 21 is read off as "one 2, then one 1" or 1211.
 
 Given an integer n, generate the nth term of the count-and-say sequence.
 
 Note: Each term of the sequence of integers will be represented as a string.
 
 Example 1:
 Input: 1
 Output: "1"
 
 Example 2:
 Input: 4
 Output: "1211"
 **/

class Solution {
    func countAndSay(_ n: Int) -> String {
        if n < 1 {
            return ""
        } else {
            var start = 1
            var result = "1"
            while start < n {
                result = transformString(result)
                start += 1
            }
            
            return result
        }
    }
    
    func transformString(_ s: String) -> String {
        var str = ""
        var pre = s[s.startIndex]
        var count = 0
        for c in s {
            if c == pre {
                count += 1
            } else {
                str.append(String(count))
                str.append(pre)
                count = 1
                pre = c
            }
        }
        
        str.append(String(count))
        str.append(pre)
        
        return str
    }
}
