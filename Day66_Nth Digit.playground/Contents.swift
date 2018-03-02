//: Playground - noun: a place where people can play

import UIKit

/**
 Nth Digit
 
 Find the nth digit of the infinite integer sequence 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, ...
 
 Note:
 n is positive and will fit within the range of a 32-bit signed integer (n < 231).
 
 Example 1:
 
 Input:
 3
 
 Output:
 3
 Example 2:
 
 Input:
 11
 
 Output:
 0
 
 Explanation:
 The 11th digit of the sequence 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, ... is a 0, which is part of the number 10.
**/

class Solution {
    func findNthDigit(_ n: Int) -> Int {
        var lenth = 1
        var count = 9
        var start = 1
        var m = n
        while m - lenth * count > 0 {
            m -= lenth * count
            lenth += 1
            count *= 10
            start *= 10
        }
        
        start += (m - 1) / lenth
        let s = String(start)
        return Int(String(s[s.index(s.startIndex, offsetBy: (m - 1) % lenth)]))!
    }
}
