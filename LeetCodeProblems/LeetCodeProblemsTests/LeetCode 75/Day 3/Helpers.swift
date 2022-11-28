//
//  XCTestCase+Helpers.swift
//  LeetCodeProblemsTests
//
//  Created by Alexandre Gravelle on 2022-11-27.
//

import Foundation
import LeetCodeProblems

func makeListNode(from array: [Int]) -> ListNode? {
    guard !array.isEmpty else { return nil }
    
    var head: ListNode?
    
    for element in array.reversed() {
        head = ListNode(element, head)
    }
    
    return head
}
