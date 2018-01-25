//: Playground - noun: a place where people can play

import UIKit

/**
 Pascal's Triangle
 
 Given numRows, generate the first numRows of Pascal's triangle.
 
 For example, given numRows = 5,
 Return
 
 [
 [1],
 [1,1],
 [1,2,1],
 [1,3,3,1],
 [1,4,6,4,1]
 ]
 **/

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 0 {
            return []
        } else {
            var result = [[1]]
            var temp = [1]
            var i = 1
            while i < numRows {
                var current = [1]
                var j = 0
                while j < temp.count - 1 {
                    current.append(temp[j] + temp[j + 1])
                    j += 1
                }
                current.append(1)
                result.append(current)
                temp = current
                i += 1
            }
            return result
        }
    }
}
