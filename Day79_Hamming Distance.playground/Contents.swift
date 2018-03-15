//: Playground - noun: a place where people can play

import UIKit

/**
 Hamming Distance
 
 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
 
 Given two integers x and y, calculate the Hamming distance.
 
 Note:
 0 ≤ x, y < 231.
 
 Example:
 
 Input: x = 1, y = 4
 
 Output: 2
 
 Explanation:
 1   (0 0 0 1)
 4   (0 1 0 0)
 ↑   ↑
 
 The above arrows point to positions where the corresponding bits are different.
 **/

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        let z = x ^ y
        return Array(String(z, radix: 2).characters).filter{ $0 == "1"}.count
    }
}
