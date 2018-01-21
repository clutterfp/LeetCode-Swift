//: Playground - noun: a place where people can play

import UIKit

/**
 Convert Sorted Array to Binary Search Tree
 
 Given an array where elements are sorted in ascending order, convert it to a height balanced BST.
 
 For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.
 
 Example:
 
 Given the sorted array: [-10,-3,0,5,9],
 
 One possible answer is: [0,-3,9,-10,null,5], which represents the following height balanced BST:
 
 0
 / \
 -3   9
 /   /
 -10  5
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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        if nums.isEmpty {
            return nil
        } else {
            let p = creater(nums, 0, nums.count - 1)
            return p
        }
    }
    
    func creater(_ nums: [Int], _ low: Int, _ high: Int) -> TreeNode? {
        if low > high {
            return nil
        }
        
        let mid = (low + high) / 2
        let q = TreeNode.init(nums[mid])
        q.left = creater(nums, low, mid - 1)
        q.right = creater(nums, mid + 1, high)
        return q
    }
}
