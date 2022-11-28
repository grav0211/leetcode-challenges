//
//  LC206Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Alexandre Gravelle on 2022-11-27.
//

import XCTest
import LeetCodeProblems

// 206. Reverse Linked List
//
// Example 1:
//
// Input: head = [1,2,3,4,5]
// Output: [5,4,3,2,1]
//
// Example 2:
//
// Input: head = [1,2]
// Output: [2,1]
//
// Example 3:
//
// Input: head = []
// Output: []

class LC206Tests: XCTestCase {

    func testReverseLinkedListOfExample1() {
        let head = makeListNode(from: [1,2,3,4,5])
        
        let result = LC206().reverseList(head)
        XCTAssertEqual(result, makeListNode(from: [5,4,3,2,1]))
    }
    
    func testReverseLinkedListOfExample2() {
        let head = makeListNode(from: [1,2])
        
        let result = LC206().reverseList(head)
        XCTAssertEqual(result, makeListNode(from: [2,1]))
    }
    
    func testReverseLinkedListOfExample3() {
        let head = makeListNode(from: [])
        
        let result = LC206().reverseList(head)
        XCTAssertEqual(result, makeListNode(from: []))
    }

}
