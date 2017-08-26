//: Playground - noun: a place where people can play

import UIKit

/**
 Palindrome Number
 
 Determine whether an integer is a palindrome. Do this without extra space.
 **/

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var xString = String(x)
        var isPalindrome = true
        
        let index = xString.characters.count / 2 + xString.characters.count % 2
        
        for i in 0..<index {
            let firstIndex = xString.index(xString.startIndex, offsetBy: i)
            let lastIndex = xString.index(xString.endIndex, offsetBy: -(i+1))
            
            if xString[firstIndex] != xString[lastIndex] {
                isPalindrome = false
            }
        }
        
        return isPalindrome
    }
}