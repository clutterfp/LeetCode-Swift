//: Playground - noun: a place where people can play

import UIKit

/**
 Different Ways to Add Parentheses
 
 Given a string of numbers and operators, return all possible results from computing all the different possible ways to group numbers and operators. The valid operators are +, - and *.
 
 
 Example 1
 Input: "2-1-1".
 
 ((2-1)-1) = 0
 (2-(1-1)) = 2
 
 Output: [0, 2]
 
 
 Example 2
 Input: "2*3-4*5"
 
 (2*(3-(4*5))) = -34
 ((2*3)-(4*5)) = -14
 ((2*(3-4))*5) = -10
 (2*((3-4)*5)) = -10
 (((2*3)-4)*5) = 10
 
 Output: [-34, -14, -10, -10, 10]
 
 Credits:
 Special thanks to @mithmatt for adding this problem and creating all test cases.
 **/

class Solution {
    func diffWaysToCompute(_ input: String) -> [Int] {
        var results = [Int]()
        var i = 0
        while i < input.count {
            let c = input[input.index(input.startIndex, offsetBy: i)]
            if c == "+" || c == "-" || c == "*" {
                let results1 = diffWaysToCompute(String(input[input.startIndex..<input.index(input.startIndex, offsetBy: i)]))
                let results2 = diffWaysToCompute(String(input[input.index(input.startIndex, offsetBy: i + 1)..<input.endIndex]))
                
                for x in results1 {
                    for y in results2 {
                        if c == "+" {
                            results.append(x + y)
                        } else if c == "-" {
                            results.append(x - y)
                        } else {
                            results.append(x * y)
                        }
                    }
                }
            }
            
            i += 1
        }
        
        if results.isEmpty {
            results.append(Int(input)!)
        }
        
        return results
    }
}
