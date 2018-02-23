//: Playground - noun: a place where people can play

import UIKit

/**
 Swap Nodes in Pairs
 
 Given a linked list, swap every two adjacent nodes and return its head.
 
 For example,
 Given 1->2->3->4, you should return the list as 2->1->4->3.
 
 Your algorithm should use only constant space. You may not modify the values in the list, only nodes itself can be changed.
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
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var current = head
        let newHead = head?.next ?? head
        while current?.next != nil {
            let tmp = current
            current = current!.next
            tmp!.next = current!.next
            current!.next = tmp
            current = tmp!.next
            if current?.next != nil {
                tmp!.next = current!.next
            }
            
        }
        
        return newHead
    }
}
