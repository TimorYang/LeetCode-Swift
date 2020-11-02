//
//  141-Linked List Cycle.swift
//  algorithm
//
//  Created by apple on 2020/11/2.
//

import Foundation

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

class LikedListCycle {
    func hasCycle(_ head: ListNode?) -> Bool {
        if head == nil || head?.next == nil {
            return false
        }
        // 快慢指针
        var slow = head
        var fast = head?.next
        while fast != nil || fast?.next != nil {
            // 如果slow 和 fast相遇就说明该链表是有环的
            if slow === fast {
                return true
            }
            slow = slow?.next
            fast = fast?.next?.next
        }
        return false
    }
}
