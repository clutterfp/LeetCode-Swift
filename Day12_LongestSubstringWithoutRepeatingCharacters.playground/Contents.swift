//: Playground - noun: a place where people can play

import UIKit

/**
 Longest Substring Without Repeating Characters
 
 Given a string, find the length of the longest substring without repeating characters.
 
 Examples:
 Given "abcabcbb", the answer is "abc", which the length is 3.
 Given "bbbbb", the answer is "b", with the length of 1.
 Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 **/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var map = [Character : Int]()
        var p1 = 0
        var p2 = 0
        var length = 0
        
        for c in s {
            if map[c] != nil {
                p2 = max(p2, (map[c]! + 1))
            }
            
            map[c] = p1
            length = max(length, p1 - p2 + 1)
            p1 += 1
        }
        
        return length
    }
}
