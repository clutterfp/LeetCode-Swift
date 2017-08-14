//: Playground - noun: a place where people can play

import UIKit

/**
 Reverse Integer
 
 Reverse digits of an integer.
 
 Example1: x = 123, return 321
 Example2: x = -123, return -321
 
 Note:
 The input is assumed to be a 32-bit signed integer. Your function should return 0 when the reversed integer overflows.
 **/

class Solution {
    func reverse(_ x: Int) -> Int {
        let oldString = String(x)
        var newString = String()
        
        for character in oldString.characters.reversed() {
            if character == "-" {
                newString.insert(character, at: newString.startIndex)
            }else {
                newString.append(character)
            }
        }
        
        if let result = Int32(newString) {
            return Int(result)
        }else {
            return 0
        }
    }
}
