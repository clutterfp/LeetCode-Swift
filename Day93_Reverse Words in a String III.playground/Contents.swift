//: Playground - noun: a place where people can play

import UIKit

/**
 Reverse Words in a String III
 
 Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
 
 Example 1:
 Input: "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 
 Note: In the string, each word is separated by single space and there will not be any extra space in the string.
 **/

class Solution {
    func reverseWords(_ s: String) -> String {
        var str = s
        str.append(" ")
        var reverse = ""
        var word = ""
        for c in str {
            if c != " " {
                word.append(c)
            } else {
                reverse.append(String(word.reversed()))
                reverse.append(" ")
                word = ""
            }
        }
        
        reverse.removeLast()
        return reverse
    }
}
