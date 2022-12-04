//
//  LC876Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Alexandre Gravelle on 2022-12-04.
//

import XCTest
import LeetCodeProblems

// 876. Middle of the Linked List
//
// Example 1:
//
// Input: head = [1,2,3,4,5]
// Output: [3,4,5]
// Explanation: The middle node of the list is node 3.
//
// Example 2:
//
// Input: head = [1,2,3,4,5,6]
// Output: [4,5,6]
// Explanation: Since the list has two middle nodes with values 3 and 4, we return the second one.

class LC876Tests: XCTestCase {
    
    func testMiddleOfLinkedListFromExample1() {
        let head = makeListNode(from: [1,2,3,4,5])
        
        let result = LC876().middleNode(head)
        XCTAssertEqual(result, makeListNode(from: [3,4,5]))
    }
    
    func testMiddleOfLinkedListFromExample2() {
        let head = makeListNode(from: [1,2,3,4,5,6])
        
        let result = LC876().middleNode(head)
        XCTAssertEqual(result, makeListNode(from: [4,5,6]))
    }
}
