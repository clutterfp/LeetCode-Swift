//: Playground - noun: a place where people can play

import UIKit

/**
 Repeated Substring Pattern
 
 Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only and its length will not exceed 10000.
 Example 1:
 Input: "abab"
 
 Output: True
 
 Explanation: It's the substring "ab" twice.
 Example 2:
 Input: "aba"
 
 Output: False
 Example 3:
 Input: "abcabcabcabc"
 
 Output: True
 
 Explanation: It's the substring "abc" four times. (And the substring "abcabc" twice.)
 **/

class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        let l = s.count
        var i = l / 2
        while i >= 1 {
            if (l % i == 0) {
                let m = l / i
                let sub = s.substring(to: s.index(s.startIndex, offsetBy: i))
                var sb = ""
                for _ in 0..<m {
                    sb.append(sub)
                }
                
                if sb == s {
                    return true
                }
            }
            
            i -= 1
        }
        
        return false
    }
}
