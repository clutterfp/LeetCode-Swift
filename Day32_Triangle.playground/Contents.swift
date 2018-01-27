//: Playground - noun: a place where people can play

import UIKit

/**
 Triangle
 
 Given a triangle, find the minimum path sum from top to bottom. Each step you may move to adjacent numbers on the row below.
 
 For example, given the following triangle
 
 [
 [2],
 [3,4],
 [6,5,7],
 [4,1,8,3]
 ]
 
 The minimum path sum from top to bottom is 11 (i.e., 2 + 3 + 5 + 1 = 11).
 
 Note:
 
 Bonus point if you are able to do this using only O(n) extra space, where n is the total number of rows in the triangle.
 **/

class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        var results = Array(repeating: 0, count: triangle.count + 1)
        for tmp in triangle.reversed() {
            var index = 0
            while index < tmp.count {
                results[index] = min(results[index], results[index + 1]) + tmp[index]
                
                index += 1
            }
        }
        
        return results[0]
    }
}
