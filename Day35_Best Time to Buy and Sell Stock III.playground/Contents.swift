//: Playground - noun: a place where people can play

import UIKit

/**
 Best Time to Buy and Sell Stock III
 
 Say you have an array for which the ith element is the price of a given stock on day i.
 
 Design an algorithm to find the maximum profit. You may complete at most two transactions.
 
 Note:
 You may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).
 **/

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit1 = 0
        var maxProfit2 = 0
        var lowestBuyPrice1: Int = Int.max
        var lowestBuyPrice2: Int = Int.max
        for price in prices {
            maxProfit2 = max(maxProfit2, price - lowestBuyPrice2)
            lowestBuyPrice2 = min(lowestBuyPrice2, price - maxProfit1)
            maxProfit1 = max(maxProfit1, price - lowestBuyPrice1)
            lowestBuyPrice1 = min(lowestBuyPrice1, price)
        }
        
        return maxProfit2
    }
}
