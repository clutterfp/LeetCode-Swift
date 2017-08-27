//: Playground - noun: a place where people can play

import UIKit

/**
 Roman to Integer

 Given a roman numeral, convert it to an integer.
 
 Input is guaranteed to be within the range from 1 to 3999.
 **/

class Solution {
    func romanToInt(_ s: String) -> Int {
        var result = 0
        var index = 0
        var firstRange, secondRange: ClosedRange<String.Index>
        var firstMatch, secondMatch: String
        var firstMatchResult, secondMatchResult: (Bool, Int)
        
        while index < s.characters.count {
            firstMatchResult = (false, 0)
            secondMatchResult = (false, 0)
            
            firstRange = s.index(s.startIndex, offsetBy: index)...s.index(s.startIndex, offsetBy: index)
            firstMatch = s[firstRange]
            firstMatchResult = match(firstMatch)
            
            if index < s.characters.count - 1 {
                secondRange = s.index(s.startIndex, offsetBy: index)...s.index(s.startIndex, offsetBy: index + 1)
                secondMatch = s[secondRange]
                secondMatchResult = match(secondMatch)
            }
            
            if secondMatchResult.0 {
                result = result + secondMatchResult.1
                index = index + 2
            }else {
                result = result + firstMatchResult.1
                index = index + 1
            }
        }
        
        return result
    }
    
    func match(_ match: String) -> (Bool, Int) {
        let romanArray: [(String, Int)] = [("I",1),("IV",4), ("V",5),("IX",9), ("X",10),("XL",40), ("L",50), ("XC",90), ("C",100), ("CD",400), ("D",500), ("CM",900), ("M",1000)]
        
        for (roman, value) in romanArray {
            if match == roman {
                return (true, value)
            }
        }
        
        return (false, 0)
    }
}