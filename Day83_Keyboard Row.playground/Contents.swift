//: Playground - noun: a place where people can play

import UIKit

/**
 Keyboard Row
 
 Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.
 
 Example 1:
 Input: ["Hello", "Alaska", "Dad", "Peace"]
 Output: ["Alaska", "Dad"]
 Note:
 You may use one character in the keyboard more than once.
 You may assume the input string will only contain letters of alphabet.
 **/

class Solution {
    func findWords(_ words: [String]) -> [String] {
        let firstLine: Set<Character> =  ["q","w","e","r","t","y","u","i","o","p"]
        let secondLine: Set<Character> = ["a","s","d","f","g","h","j","k","l"]
        let thirdLine: Set<Character> = ["z","x","c","v","b","n","m"]
        var list = [String]()
        words.forEach { (word) in
            let set = Set(word.lowercased().characters)
            if set.isSubset(of: firstLine) || set.isSubset(of: secondLine) || set.isSubset(of: thirdLine) {
                list.append(word)
            }
        }
        
        return list
    }
}
