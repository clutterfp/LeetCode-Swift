//: Playground - noun: a place where people can play

import UIKit

/**
 First Unique Character in a String
 
 Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
 
 Examples:
 
 s = "leetcode"
 return 0.
 
 s = "loveleetcode",
 return 2.
 Note: You may assume the string contain only lowercase letters.
 **/

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var i = 0
        var map = [Character]()
        for c in s {
            var str = s
            
            if !map.contains(c) {
                map.append(c)
                str.remove(at: str.index(str.startIndex, offsetBy: i))
                
                if !str.contains(c) {
                    return i
                }
            }
            
            i += 1
        }
        
        return -1
    }
}
