//
//  LC392Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Alexandre Gravelle on 2022-11-21.
//

import XCTest
import LeetCodeProblems

// 392. Is Subsequence
//
// Example 1:
//
// Input: s = "abc", t = "ahbgdc"
// Output: true
//
// Example 2:
//
// Input: s = "axc", t = "ahbgdc"
// Output: false
//
// Example 3:
//
// Input: s = "", t = "ahbgdc"
// Output: true
//
// Example 4:
//
// Input: s = "acb", t = "ahbgdc"
// Output: false
//
// Example 5:
//
// Input: s = "bb", t = "ahbgdc"
// Output: false

class LC392Tests: XCTestCase {

    func testIsSubsequenceForExample1() {
        let s = "abc"
        let t = "ahbgdc"
        
        let result = LC392().isSubsequence(s, t)
        XCTAssertEqual(result, true)
    }
    
    func testIsSubsequenceForExample2() {
        let s = "axc"
        let t = "ahbgdc"
        
        let result = LC392().isSubsequence(s, t)
        XCTAssertEqual(result, false)
    }
    
    func testIsSubsequenceForExample3() {
        let s = ""
        let t = "ahbgdc"
        
        let result = LC392().isSubsequence(s, t)
        XCTAssertEqual(result, true)
    }
    
    func testIsSubsequenceForExample4() {
        let s = "acb"
        let t = "ahbgdc"
        
        let result = LC392().isSubsequence(s, t)
        XCTAssertEqual(result, false)
    }
    
    func testIsSubsequenceForExample5() {
        let s = "bb"
        let t = "ahbgdc"
        
        let result = LC392().isSubsequence(s, t)
        XCTAssertEqual(result, false)
    }
}
