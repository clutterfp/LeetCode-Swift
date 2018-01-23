//: Playground - noun: a place where people can play

import UIKit

/**
 Minimum Depth of Binary Tree
 
 Given a binary tree, find its minimum depth.
 
 The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
 **/

//  Definition for a binary tree node.
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
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        } else {
            let left = minDepth(root!.left)
            let right = minDepth(root!.right)
            if left == 0 || right == 0 {
                return left + right + 1
            } else {
                return min(left, right) + 1
            }
        }
    }
}
