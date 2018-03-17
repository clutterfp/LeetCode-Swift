//: Playground - noun: a place where people can play

import UIKit

/**
 Path Sum III
 
 You are given a binary tree in which each node contains an integer value.
 
 Find the number of paths that sum to a given value.
 
 The path does not need to start or end at the root or a leaf, but it must go downwards (traveling only from parent nodes to child nodes).
 
 The tree has no more than 1,000 nodes and the values are in the range -1,000,000 to 1,000,000.
 
 Example:
 
 root = [10,5,-3,3,2,null,11,3,-2,null,1], sum = 8
 
 10
 /  \
 5   -3
 / \    \
 3   2   11
 / \   \
 3  -2   1
 
 Return 3. The paths that sum to 8 are:
 
 1.  5 -> 3
 2.  5 -> 2 -> 1
 3. -3 -> 11
 **/

// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        if root == nil {
            return 0
        }
        
        return pathSumFrom(root!, sum) + pathSum(root!.left, sum) + pathSum(root!.right, sum)
    }
    
    func pathSumFrom(_ node: TreeNode?, _ sum: Int) -> Int {
        if node == nil {
            return 0
        }
        
        return (node!.val == sum ? 1 : 0) + pathSumFrom(node!.left, sum - node!.val) + pathSumFrom(node!.right, sum - node!.val)
    }
}


