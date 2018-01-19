//: Playground - noun: a place where people can play

import UIKit

/**
 Maximum Depth of Binary Tree
 
 Given a binary tree, find its maximum depth.
 
 The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
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
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        } else {
            return 1 + max(maxDepth(root!.left), maxDepth(root!.right))
        }
    }
}
