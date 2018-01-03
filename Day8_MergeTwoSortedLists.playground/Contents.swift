//: Playground - noun: a place where people can play

import UIKit

/**
 Merge Two Sorted Lists
 
 Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.
 
 Example:
 Input: 1->2->4, 1->3->4
 Output: 1->1->2->3->4->4
 **/

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        } else if l2 == nil {
            return l1
        } else {
            var nodeArray = [Int]()
            nodeArray.append(l1!.val)
            while l1!.next != nil {
                nodeArray.append(l1!.next!.val)
                l1!.next = l1!.next!.next
            }
            
            nodeArray.append(l2!.val)
            while l2!.next != nil {
                nodeArray.append(l2!.next!.val)
                l2!.next = l2!.next!.next
            }
            
            nodeArray.sort(){$0 < $1}
            
            let head = ListNode.init(nodeArray[0])
            var node = head
            for index in 1...nodeArray.count - 1 {
                let listNode = ListNode.init(nodeArray[index])
                node.next = listNode
                node = listNode
            }
            
            return head;
        }
    }
}
