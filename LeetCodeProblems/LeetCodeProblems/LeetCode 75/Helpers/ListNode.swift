//
//  ListNode.swift
//  LeetCodeProblems
//
//  Created by Alexandre Gravelle on 2022-11-25.
//

import Foundation

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

extension ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        guard lhs.val == rhs.val else { return false }
        
        switch (lhs.next, rhs.next) {
        case (nil, nil):
            return true
        case let (lValue, rValue):
            return lValue == rValue
        }
    }
}
