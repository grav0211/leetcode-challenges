//
//  LC206.swift
//  LeetCodeProblems
//
//  Created by Alexandre Gravelle on 2022-11-27.
//

import Foundation

// 206. Reverse Linked List
//
// Given the head of a singly linked list, reverse the list, and return the reversed list.
//
// Constraints:
//
// The number of nodes in the list is the range [0, 5000].
// -5000 <= Node.val <= 5000

public class LC206 {
    public init() {}
    
    public func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil else { return head }
        guard head!.next != nil else { return head }
        
        let reversedSubList = reverseList(head?.next)
        
        head?.next?.next = head
        head?.next = nil
        
        return reversedSubList
    }
}
