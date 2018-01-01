//: Playground - noun: a place where people can play

import UIKit

/**
 Longest Common Prefix
 
 Write a function to find the longest common prefix string amongst an array of strings.
 **/

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = strs.isEmpty ? "" : strs[0]
        for str in strs {
            while !str.hasPrefix(prefix) {
                if prefix.isEmpty {
                    return ""
                }
                prefix.remove(at: prefix.index(before: prefix.endIndex))
            }
        }
        return prefix
    }
}
