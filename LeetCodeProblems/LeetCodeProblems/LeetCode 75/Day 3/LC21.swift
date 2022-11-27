//
//  LC21.swift
//  LeetCodeProblems
//
//  Created by Alexandre Gravelle on 2022-11-25.
//

import Foundation

// 21. Merge Two Sorted Lists
// You are given the heads of two sorted linked lists list1 and list2.
//
// Merge the two lists in a one sorted list. The list should be made by
// splicing together the nodes of the first two lists.
//
// Return the head of the merged linked list.

// Constraints:
//
// The number of nodes in both lists is in the range [0, 50].
// -100 <= Node.val <= 100
// Both list1 and list2 are sorted in non-decreasing order.

public class LC21 {
    public init() {}
    
    public func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard list1 != nil else { return list2 }
        guard list2 != nil else { return list1 }
        
        if list1!.val < list2!.val {
            list1?.next = mergeTwoLists(list1?.next, list2)
            return list1
        }
        else {
            list2?.next = mergeTwoLists(list1, list2?.next)
            return list2
        }
    }
}
