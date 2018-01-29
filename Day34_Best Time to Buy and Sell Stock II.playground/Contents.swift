//: Playground - noun: a place where people can play

import UIKit

/**
 Best Time to Buy and Sell Stock II
 
 Say you have an array for which the ith element is the price of a given stock on day i.
 
 Design an algorithm to find the maximum profit. You may complete as many transactions as you like (ie, buy one and sell one share of the stock multiple times). However, you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).
 **/

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var total = 0
        var i = 0
        while i < prices.count - 1 {
            if prices[i + 1] > prices[i] {
                total += prices[i + 1] - prices[i]
            }
            
            i += 1
        }
        return total
    }
}
