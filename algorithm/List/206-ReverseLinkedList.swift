//
//  206-ReverseLinkedList.swift
//  algorithm
//
//  Created by apple on 2020/10/29.
//

import Foundation

/*
 Reverse a singly linked list.
 
 Example:
 
 Input: 1->2->3->4->5->NULL
 Output: 5->4->3->2->1->NULL
 Follow up:
 
 A linked list can be reversed either iteratively or recursively. Could you implement both?
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/reverse-linked-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */


class Solution {
    func test() {
        let testNode1 = ListNode(1)
        let testNode2 = ListNode(2)
        let testNode3 = ListNode(3)
        let testNode4 = ListNode(4)
        let testNode5 = ListNode(5)
        testNode1.next = testNode2
        testNode2.next = testNode3
        testNode3.next = testNode4
        testNode4.next = testNode5
        
        self.reverseListWithRecursion(testNode1)
        self.reverseListWithIteration(testNode1)
    }
    
    func reverseListWithRecursion(_ head: ListNode?) -> ListNode? {
        // 1.递归法
        if head == nil || head?.next == nil {
            return head
        }
        let newHead = reverseListWithRecursion(head?.next)
        head?.next?.next = head
        head?.next = nil
        return newHead
    }
    
    func reverseListWithIteration(_ head: ListNode?) -> ListNode? {
        // 2.迭代法
        if head == nil || head?.next == nil {
            return head
        }
        var newHead: ListNode? = nil
        var oldHead: ListNode? = head
        while oldHead != nil {
            let tmpHead: ListNode? = oldHead?.next
            oldHead?.next = newHead
            newHead = oldHead
            oldHead = tmpHead
        }
        return newHead
    }
}
