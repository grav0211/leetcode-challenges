//
//  LC1480Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Alexandre Gravelle on 2022-11-21.
//

import XCTest
import LeetCodeProblems

// 1480. Running Sum of 1d Array Tests
//
// Example 1:
//
// Input: nums = [1,2,3,4]
// Output: [1,3,6,10]
// Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
//
// Example 2:
//
// Input: nums = [1,1,1,1,1]
// Output: [1,2,3,4,5]
// Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
//
// Example 3:
//
// Input: nums = [3,1,2,10,1]
// Output: [3,4,6,16,17]

class LC1480Tests: XCTestCase {
    
    // MARK: - Solution 1
    
    func testRunningSumS1OfExample1() {
        let nums = [1,2,3,4]
        
        let result = LC1480().runningSumS1(nums)
        XCTAssertEqual(result, [1,3,6,10])
    }
    
    func testRunningSumS1OfExample2() {
        let nums = [1,1,1,1,1]
        
        let result = LC1480().runningSumS1(nums)
        XCTAssertEqual(result, [1,2,3,4,5])
    }
    
    func testRunningSumS1OfExample3() {
        let nums = [3,1,2,10,1]
        
        let result = LC1480().runningSumS1(nums)
        XCTAssertEqual(result, [3,4,6,16,17])
    }
    
    // MARK: - Solution 2
    
    func testRunningSumS2OfExample1() {
        let nums = [1,2,3,4]
        
        let result = LC1480().runningSumS2(nums)
        XCTAssertEqual(result, [1,3,6,10])
    }
    
    func testRunningSumS2OfExample2() {
        let nums = [1,1,1,1,1]
        
        let result = LC1480().runningSumS2(nums)
        XCTAssertEqual(result, [1,2,3,4,5])
    }
    
    func testRunningSumS2OfExample3() {
        let nums = [3,1,2,10,1]
        
        let result = LC1480().runningSumS2(nums)
        XCTAssertEqual(result, [3,4,6,16,17])
    }
}
