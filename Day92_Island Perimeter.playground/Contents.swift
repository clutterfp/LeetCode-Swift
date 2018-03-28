//: Playground - noun: a place where people can play

import UIKit

/**
 Island Perimeter
 
 You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water. Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells). The island doesn't have "lakes" (water inside that isn't connected to the water around the island). One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.
 
 Example:
 
 [[0,1,0,0],
 [1,1,1,0],
 [0,1,0,0],
 [1,1,0,0]]
 
 Answer: 16
 **/

class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var islands = 0
        var neighbours = 0
        var i = 0
        var j = 0
        while i < grid.count {
            j = 0
            while j < grid[i].count {
                if grid[i][j] == 1 {
                    islands += 1
                    if i < grid.count - 1 && grid[i + 1][j] == 1 {
                        neighbours += 1
                    }
                    
                    if j < grid[i].count - 1 && grid[i][j + 1] == 1 {
                        neighbours += 1
                    }
                }
                
                j += 1
            }
            
            i += 1
        }
        
        return islands * 4 - neighbours * 2
    }
}
