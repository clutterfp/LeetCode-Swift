//: Playground - noun: a place where people can play

import UIKit

/**
 Valid Parentheses
 
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
 **/

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        
        for character in s {
            if character == "(" {
                stack.append(")")
            } else if character == "{" {
                stack.append("}")
            } else if character == "[" {
                stack.append("]")
            } else if stack.isEmpty || stack.removeLast() != character {
                return false
            }
        }
        
        return stack.isEmpty
    }
}
