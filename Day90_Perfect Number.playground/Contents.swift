//: Playground - noun: a place where people can play

import UIKit

/**
 Perfect Number
 
 We define the Perfect Number is a positive integer that is equal to the sum of all its positive divisors except itself.
 
 Now, given an integer n, write a function that returns true when it is a perfect number and false when it is not.
 
 Example:
 Input: 28
 Output: True
 
 Explanation: 28 = 1 + 2 + 4 + 7 + 14
 
 Note: The input number n will not exceed 100,000,000. (1e8)
 **/

class Solution {
    func checkPerfectNumber(_ num: Int) -> Bool {
        if num < 2 {
            return false
        }
        
        var i = 2
        var sum = 1
        let half = Int(sqrt(Double(num)))
        
        while i <= half  {
            if num % i == 0 {
                sum += i + num / i
            }
            
            i += 1
        }
        
        return sum == num
    }
}
