//
//  LC205Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Alexandre Gravelle on 2022-11-21.
//

import XCTest
import LeetCodeProblems

// 205. Isomorphic Strings Tests

// Example 1:
//
// Input: s = "egg", t = "add"
// Output: true
//
// Example 2:
//
// Input: s = "foo", t = "bar"
// Output: false
//
// Example 3:
//
// Input: s = "paper", t = "title"
// Output: true
//
// Example 4:
//
// Input: s = "bbbaaaba", t = "aaabbbba"
// Output: false

class LC205Tests: XCTestCase {
    
    func testIsomorphicStringsOfExample1() {
        let s = "egg"
        let t = "add"
        
        let result = LC205().isIsomorphic(s, t)
        XCTAssertEqual(result, true)
    }
    
    func testIsomorphicStringsOfExample2() {
        let s = "foo"
        let t = "bar"
        
        let result = LC205().isIsomorphic(s, t)
        XCTAssertEqual(result, false)
    }
    
    func testIsomorphicStringsOfExample3() {
        let s = "paper"
        let t = "title"
        
        let result = LC205().isIsomorphic(s, t)
        XCTAssertEqual(result, true)
    }
    
    func testIsomorphicStringsOfExample4() {
        let s = "bbbaaaba"
        let t = "aaabbbba"
        
        let result = LC205().isIsomorphic(s, t)
        XCTAssertEqual(result, false)
    }
}
