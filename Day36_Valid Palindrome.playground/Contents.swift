//: Playground - noun: a place where people can play

import UIKit

/**
 Valid Palindrome
 
 Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
 
 For example,
 "A man, a plan, a canal: Panama" is a palindrome.
 "race a car" is not a palindrome.
 
 Note:
 Have you consider that the string might be empty? This is a good question to ask during an interview.
 
 For the purpose of this problem, we define empty string as valid palindrome.
 **/

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        if s.isEmpty {
            return true
        } else {
            let characters = Array(s.lowercased().unicodeScalars)
            var i = 0
            var j = s.unicodeScalars.count - 1
            
            while i <= j {
                while i < j && !CharacterSet.alphanumerics.contains(characters[i]) {
                    i += 1
                }
                
                while i < j && !CharacterSet.alphanumerics.contains(characters[j]) {
                    j -= 1
                }
                
                while characters[i] != characters[j] {
                    return false
                }
                
                i += 1
                j -= 1
            }
            
            return true
        }
    }
}
