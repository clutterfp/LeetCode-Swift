//: Playground - noun: a place where people can play

import UIKit

/**
 Implement strStr().
 
 Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
 
 Example 1:
 Input: haystack = "hello", needle = "ll"
 Output: 2
 
 Example 2:
 Input: haystack = "aaaaa", needle = "bba"
 Output: -1
 **/

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {
            return 0
        }
        
        let range = haystack.range(of: needle)
        if range == nil {
            return -1
        } else {
            return haystack.distance(from: haystack.startIndex, to: range!.lowerBound)
        }
    }
}
