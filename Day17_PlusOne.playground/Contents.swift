//: Playground - noun: a place where people can play

import UIKit

/**
 Plus One
 
 Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.
 
 You may assume the integer do not contain any leading zero, except the number 0 itself.
 
 The digits are stored such that the most significant digit is at the head of the list.
 **/

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var newdigits = digits
        var index = newdigits.count - 1
        for digit in newdigits.reversed() {
            if digit < 9 {
                newdigits[index] += 1
                return newdigits
            }
            
            newdigits[index] = 0
            index -= 1
        }
        
        newdigits = [1] + newdigits
        return newdigits
    }
}
