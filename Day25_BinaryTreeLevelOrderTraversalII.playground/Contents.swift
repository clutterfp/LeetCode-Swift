//: Playground - noun: a place where people can play

import UIKit

/**
 Binary Tree Level Order Traversal II
 
 Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).
 
 For example:
 
 Given binary tree [3,9,20,null,null,15,7],
 
 3
 / \
 9  20
 /  \
 15   7
 
 return its bottom-up level order traversal as:
 
 [
 [15,7],
 [9,20],
 [3]
 ]
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
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        guard let rootNode = root else {
            return []
        }
        
        var result: [[Int]] = []
        var values: [Int] = []
        var nodes: [TreeNode?] = []
        
        nodes.append(rootNode)
        nodes.append(nil)
        
        while !nodes.isEmpty {
            if let currentNode = nodes.removeFirst() {
                values.append(currentNode.val)
                if currentNode.left != nil {
                    nodes.append(currentNode.left)
                }
                
                if currentNode.right != nil {
                    nodes.append(currentNode.right)
                }
            } else {
                result.append(values)
                
                if !nodes.isEmpty {
                    values.removeAll()
                    nodes.append(nil)
                }
            }
        }
        
        return result.reversed()
    }
}

