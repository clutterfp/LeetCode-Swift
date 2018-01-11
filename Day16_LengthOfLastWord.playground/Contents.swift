//: Playground - noun: a place where people can play

import UIKit

/**
 Length of Last Word
 
 Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.
 
 If the last word does not exist, return 0.
 
 Note: A word is defined as a character sequence consists of non-space characters only.
 
 Example:
 Input: "Hello World"
 Output: 5
 **/

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        if s.replacingOccurrences(of: " ", with: "").isEmpty {
            return 0
        } else {
            var array = s.components(separatedBy: " ")
            var index = array.count - 1
            for str in array.reversed() {
                if str.isEmpty {
                    array.remove(at: index)
                }
                
                index -= 1
            }
            return array.last!.count
        }
    }
}
