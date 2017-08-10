//: Playground - noun: a place where people can play

import UIKit


/**
 Add Two Numbers
 
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 
 Output: 7 -> 0 -> 8
 **/

//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var list1 = l1
        var list2 = l2
        var list3: ListNode? = ListNode(0)
        var node = list3
        
        while list1 != nil || list2 != nil {
            let list1Vaule = list1?.val != nil ? list1!.val : 0
            let list2Vaule = list2?.val != nil ? list2!.val : 0
            
            node?.next = ListNode((list1Vaule + list2Vaule + carry) % 10)
            node = node?.next
            carry = (list1Vaule + list2Vaule + carry) / 10
            list1 = list1?.next
            list2 = list2?.next
        }
        
        if (carry > 0) {
            node?.next = ListNode(carry)
        }
        
        list3 = list3?.next
        
        return list3
    }
}
