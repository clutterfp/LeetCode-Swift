//: Playground - noun: a place where people can play

import UIKit

/**
 Pascal's Triangle II
 
 Given an index k, return the kth row of the Pascal's triangle.
 
 For example, given k = 3,
 Return [1,3,3,1].
 
 Note:
 Could you optimize your algorithm to use only O(k) extra space?
 **/

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        return generate(rowIndex + 1).last!
    }
    
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
