//
//  LC21Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Alexandre Gravelle on 2022-11-25.
//

import XCTest
import LeetCodeProblems

// 21. Merge Two Sorted Lists
//
// Example 1:
//
// Input: list1 = [1,2,4], list2 = [1,3,4]
// Output: [1,1,2,3,4,4]
//
// Example 2:
//
// Input: list1 = [], list2 = []
// Output: []
//
// Example 3:
//
// Input: list1 = [], list2 = [0]
// Output: [0]

class LC21Tests: XCTestCase {
    
    func testMergeOfTwoSortedListsFromExample1() {
        let list1 = makeListNode(from: [1,2,4])
        let list2 = makeListNode(from: [1,3,4])
        
        let result = LC21().mergeTwoLists(list1, list2)
        XCTAssertEqual(result, makeListNode(from: [1,1,2,3,4,4]))
    }
    
    func testMergeOfTwoSortedListsFromExample2() {
        let list1 = makeListNode(from: [])
        let list2 = makeListNode(from: [])
        
        let result = LC21().mergeTwoLists(list1, list2)
        XCTAssertEqual(result, makeListNode(from: []))
    }
    
    func testMergeOfTwoSortedListsFromExample3() {
        let list1 = makeListNode(from: [])
        let list2 = makeListNode(from: [0])
        
        let result = LC21().mergeTwoLists(list1, list2)
        XCTAssertEqual(result, makeListNode(from: [0]))
    }
    
    // MARK: - Helpers
    private func makeListNode(from array: [Int]) -> ListNode? {
        guard !array.isEmpty else { return nil }
        
        var head: ListNode?
        
        for element in array.reversed() {
            head = ListNode(element, head)
        }
        
        return head
    }
}
