//: Playground - noun: a place where people can play

import UIKit

/**
 Relative Ranks
 
 Given scores of N athletes, find their relative ranks and the people with the top three highest scores, who will be awarded medals: "Gold Medal", "Silver Medal" and "Bronze Medal".
 
 Example 1:
 Input: [5, 4, 3, 2, 1]
 Output: ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"]
 
 Explanation: The first three athletes got the top three highest scores, so they got "Gold Medal", "Silver Medal" and "Bronze Medal".
 For the left two athletes, you just need to output their relative ranks according to their scores.
 
 Note:
 N is a positive integer and won't exceed 10,000.
 All the scores of athletes are guaranteed to be unique.
 **/

class Solution {
    func findRelativeRanks(_ nums: [Int]) -> [String] {
        var ranks = [String]()
        let sorted = Array(nums.sorted().reversed())
        var i = 0
        while i < nums.count {
            if nums[i] == sorted[0] {
                ranks.append("Gold Medal")
            } else if nums[i] == sorted[1] {
                ranks.append("Silver Medal")
            } else if nums[i] == sorted[2] {
                ranks.append("Bronze Medal")
            } else {
                ranks.append(String(sorted.index(of: nums[i])! + 1))
            }
            
            i += 1
        }
        
        return ranks
    }
}
