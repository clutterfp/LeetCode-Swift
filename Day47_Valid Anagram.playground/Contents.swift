//: Playground - noun: a place where people can play

import UIKit

/**
 Valid Anagram
 
 Given two strings s and t, write a function to determine if t is an anagram of s.
 
 For example,
 s = "anagram", t = "nagaram", return true.
 s = "rat", t = "car", return false.
 
 Note:
 You may assume the string contains only lowercase alphabets.
 
 Follow up:
 What if the inputs contain unicode characters? How would you adapt your solution to such case?
 **/

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        } else {
            let charS = Array(s.characters.sorted())
            let charT = Array(t.characters.sorted())
            
            return charS == charT
        }
    }
}
