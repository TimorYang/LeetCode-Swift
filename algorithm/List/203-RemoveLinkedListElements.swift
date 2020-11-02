//
//  203-RemoveLinkedListElements.swift
//  algorithm
//
//  Created by apple on 2020/11/2.
//

import Foundation

/*
Remove all elements from a linked list of integers that have value val.

Example:

Input:  1->2->6->3->4->5->6, val = 6
Output: 1->2->3->4->5

来源：力扣（LeetCode）
链接：https://leetcode-cn.com/problems/remove-linked-list-elements
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
class RemoveLinkedListElements {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        // 边界问题
        if head == nil {
            return head
        }
        // 边界问题，新建一个哨兵节点
        let sentinel = ListNode(0)
        sentinel.next = head
        var prev = sentinel
        var curr = sentinel.next
        while curr != nil {
            if curr?.val == val {
                prev.next = curr!.next
                curr = curr!.next
            } else {
                prev = curr!
                curr = curr!.next
            }
        }
        return sentinel.next
    }
    
    func test() {
        let testNode1 = ListNode(1)
        _ = self.removeElements(testNode1, 1)
    }
}
