//: Playground - noun: a place where people can play

import UIKit

/**
 Number of Segments in a String
 
 Count the number of segments in a string, where a segment is defined to be a contiguous sequence of non-space characters.
 
 Please note that the string does not contain any non-printable characters.
 
 Example:
 
 Input: "Hello, my name is John"
 Output: 5
 **/

class Solution {
    func countSegments(_ s: String) -> Int {
        if s.trimmingCharacters(in: CharacterSet.whitespaces) == "" {
            return 0
        }
        
        var count = 0
        var i = 0
        while i < s.count {
            if s[s.index(s.startIndex, offsetBy: i)] == " " {
                if !(i > 0 && s[s.index(s.startIndex, offsetBy: i - 1)] == " ") {
                    count += 1
                }
            }
            
            i += 1
        }
        
        if s[s.startIndex] != " " {
            count += 1
        }
        
        if s[s.index(before: s.endIndex)] == " " {
            count -= 1
        }
        
        return count
    }
}
