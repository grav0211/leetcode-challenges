//
//  LC876.swift
//  LeetCodeProblems
//
//  Created by Alexandre Gravelle on 2022-12-04.
//

import Foundation

// 876. Middle of the Linked List
//
// Given the head of a singly linked list, return the middle node of the linked list.
//
// If there are two middle nodes, return the second middle node.
//
// Constraints:
//
// The number of nodes in the list is in the range [1, 100].
// 1 <= Node.val <= 100

public class LC876 {
    public init() {}
    
    public func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return slow
    }
}
