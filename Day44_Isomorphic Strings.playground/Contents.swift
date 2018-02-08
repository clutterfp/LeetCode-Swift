//: Playground - noun: a place where people can play

import UIKit

/**
 Isomorphic Strings
 
 Given two strings s and t, determine if they are isomorphic.
 
 Two strings are isomorphic if the characters in s can be replaced to get t.
 
 All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.
 
 For example,
 Given "egg", "add", return true.
 
 Given "foo", "bar", return false.
 
 Given "paper", "title", return true.
 
 Note:
 You may assume both s and t have the same length.
 **/

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var charsS = Array(s.characters)
        var charsT = Array(t.characters)
        var map = [Character: Character]()
        
        if charsS.count != charsT.count {
            return false
        }
        
        for i in 0..<charsS.count {
            let charS = charsS[i]
            let charT = charsT[i]
            if let value = map[charS] {
                if value != charT {
                    return false
                }
            } else {
                if map.values.contains(charT) {
                    return false
                } else {
                    map[charS] = charT
                }
            }
        }
        
        return true
    }
}
