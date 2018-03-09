//: Playground - noun: a place where people can play

import UIKit

/**
 Longest Palindrome
 
 Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.
 
 This is case sensitive, for example "Aa" is not considered a palindrome here.
 
 Note:
 Assume the length of given string will not exceed 1,010.
 
 Example:
 
 Input:
 "abccccdd"
 
 Output:
 7
 
 Explanation:
 One longest palindrome that can be built is "dccaccd", whose length is 7.
 **/

class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var count = 0
        var haveSigle = false
        var map = [Character : Int]()
        for c in s {
            map[c] = (map[c] ?? 0) + 1
        }
        
        for key in map.keys {
            count += (map[key]! / 2) * 2
            
            if map[key]! % 2 != 0 {
                haveSigle = true
            }
        }
        
        if haveSigle {
            count += 1
        }
        
        return count
    }
}
