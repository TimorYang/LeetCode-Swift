//
//  141-Linked List Cycle.swift
//  algorithm
//
//  Created by apple on 2020/11/2.
//

import Foundation

/*
 Given head, the head of a linked list, determine if the linked list has a cycle in it.

 There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. Note that pos is not passed as a parameter.

 Return true if there is a cycle in the linked list. Otherwise, return false.

  

 Example 1:


 Input: head = [3,2,0,-4], pos = 1
 Output: true
 Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).
 Example 2:


 Input: head = [1,2], pos = 0
 Output: true
 Explanation: There is a cycle in the linked list, where the tail connects to the 0th node.
 Example 3:


 Input: head = [1], pos = -1
 Output: false
 Explanation: There is no cycle in the linked list.
  

 Constraints:

 The number of the nodes in the list is in the range [0, 104].
 -105 <= Node.val <= 105
 pos is -1 or a valid index in the linked-list.
  

 Follow up: Can you solve it using O(1) (i.e. constant) memory?

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/linked-list-cycle
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
