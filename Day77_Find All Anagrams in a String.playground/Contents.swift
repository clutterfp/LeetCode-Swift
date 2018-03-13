//: Playground - noun: a place where people can play

import UIKit

/**
 Find All Anagrams in a String
 
 Given a string s and a non-empty string p, find all the start indices of p's anagrams in s.
 
 Strings consists of lowercase English letters only and the length of both strings s and p will not be larger than 20,100.
 
 The order of output does not matter.
 
 Example 1:
 
 Input:
 s: "cbaebabacd" p: "abc"
 
 Output:
 [0, 6]
 
 Explanation:
 The substring with start index = 0 is "cba", which is an anagram of "abc".
 The substring with start index = 6 is "bac", which is an anagram of "abc".
 Example 2:
 
 Input:
 s: "abab" p: "ab"
 
 Output:
 [0, 1, 2]
 
 Explanation:
 The substring with start index = 0 is "ab", which is an anagram of "ab".
 The substring with start index = 1 is "ba", which is an anagram of "ab".
 The substring with start index = 2 is "ab", which is an anagram of "ab".
 **/

class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        let windowSize = p.characters.count
        guard windowSize > 0 else {
            return [Int]()
        }
        
        var characterCounts = [Int]()
        for _ in 1...26 {
            characterCounts.append(0)
        }
        
        for char in p.characters {
            let distance = getDistance(of: char)
            characterCounts[distance] += 1
        }
        
        var validStarts = [Int]()
        let sChars = Array(s.characters)
        for (index, char) in sChars.enumerated() {
            let distance = getDistance(of: char)
            characterCounts[distance] -= 1
            
            let start = index - windowSize + 1
            guard start >= 0 else {
                continue
            }
            
            if characterCounts.filter({ $0 > 0 }).isEmpty {
                validStarts.append(start)
            }
            
            let headCharacter = sChars[start]
            let headCharacterDistance = getDistance(of: headCharacter)
            characterCounts[headCharacterDistance] += 1
        }
        
        return validStarts
    }
    
    private func getDistance(of char: Character, from origin: Character = "a") -> Int {
        let charAscii = Int(String(char).unicodeScalars.first!.value)
        let originAscii = Int(String(origin).unicodeScalars.first!.value)
        return charAscii - originAscii
    }
}
