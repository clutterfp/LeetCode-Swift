//: Playground - noun: a place where people can play

import UIKit

/**
 Ransom Note
 
 Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.
 
 Each letter in the magazine string can only be used once in your ransom note.
 
 Note:
 You may assume that both strings contain only lowercase letters.
 
 canConstruct("a", "b") -> false
 canConstruct("aa", "ab") -> false
 canConstruct("aa", "aab") -> true
 **/

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var mutableMagazine = magazine
        for c in ransomNote {
            if mutableMagazine.contains(c) {
                mutableMagazine.remove(at: mutableMagazine.index(of: c)!)
            } else {
                return false
            }
        }
        
        return true
    }
}
