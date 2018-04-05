//: Playground - noun: a place where people can play

import UIKit

/**
 Maximum Binary Tree
 
 Given an integer array with no duplicates. A maximum tree building on this array is defined as follow:
 
 The root is the maximum number in the array.
 The left subtree is the maximum tree constructed from left part subarray divided by the maximum number.
 The right subtree is the maximum tree constructed from right part subarray divided by the maximum number.
 Construct the maximum tree by the given array and output the root node of this tree.
 
 Example 1:
 Input: [3,2,1,6,0,5]
 Output: return the tree root node representing the following tree:
 
 6
 /   \
 3     5
 \    /
 2  0
 \
 1
 
 Note:
 The size of the given array will be in the range [1,1000].
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
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        if nums.isEmpty {
            return nil
        }
        
        let root = TreeNode.init(nums.max()!)
        let index = nums.index(of: nums.max()!)!
        
        if (index - 1) < 0 {
            root.left = nil
        } else {
            root.left = constructMaximumBinaryTree(Array(nums[0...(index - 1)]))
        }
        
        if index + 1 > nums.count - 1 {
            root.right = nil
        } else {
            root.right = constructMaximumBinaryTree(Array(nums[(index + 1)...(nums.count - 1)]))
        }
        
        return root
    }
}
