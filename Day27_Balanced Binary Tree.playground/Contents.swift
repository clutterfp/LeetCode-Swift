//: Playground - noun: a place where people can play

import UIKit

/**
 Balanced Binary Tree
 
 Given a binary tree, determine if it is height-balanced.
 
 For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.
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
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        } else {
            if abs(maxDepth(root!.left) - maxDepth(root!.right)) <= 1 && isBalanced(root!.left) && isBalanced(root!.right){
                return true
            } else {
                return false
            }
        }
    }
    
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        } else {
            return 1 + max(maxDepth(root!.left), maxDepth(root!.right))
        }
    }
}
