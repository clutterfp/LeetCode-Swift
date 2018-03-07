//: Playground - noun: a place where people can play

import UIKit

/**
 Number of Boomerangs
 
 Given n points in the plane that are all pairwise distinct, a "boomerang" is a tuple of points (i, j, k) such that the distance between i and j equals the distance between i and k (the order of the tuple matters).
 
 Find the number of boomerangs. You may assume that n will be at most 500 and coordinates of points are all in the range [-10000, 10000] (inclusive).
 
 Example:
 Input:
 [[0,0],[1,0],[2,0]]
 
 Output:
 2
 
 Explanation:
 The two boomerangs are [[1,0],[0,0],[2,0]] and [[1,0],[2,0],[0,0]]
 **/

class Solution {
    func numberOfBoomerangs(_ points: [[Int]]) -> Int {
        var res = 0
        var map = [Int : Int]()
        var i = 0
        while i < points.count {
            var j = 0
            while j < points.count {
                if i != j {
                    let d = getDistance(points[i], points[j])
                    map[d] = (map[d] ?? 0) + 1
                }
                
                j += 1
            }
            
            for val in map.values {
                res += val * (val - 1)
            }
            
            map.removeAll()
            i += 1
        }
        
        return res
    }
    
    func getDistance(_ a: [Int], _ b: [Int]) -> Int {
        let dx = a[0] - b[0]
        let dy = a[1] - b[1]
        return dx * dx + dy * dy
    }
}
