//
//  LC724Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Alexandre Gravelle on 2022-11-21.
//

import XCTest
import LeetCodeProblems

// 724. Find Pivot Index Tests
//
// Example 1:
//
// Input: nums = [1,7,3,6,5,6]
// Output: 3
// Explanation:
// The pivot index is 3.
// Left sum = nums[0] + nums[1] + nums[2] = 1 + 7 + 3 = 11
// Right sum = nums[4] + nums[5] = 5 + 6 = 11
//
// Example 2:
//
// Input: nums = [1,2,3]
// Output: -1
// Explanation:
// There is no index that satisfies the conditions in the problem statement.
//
// Example 3:
//
// Input: nums = [2,1,-1]
// Output: 0
// Explanation:
// The pivot index is 0.
// Left sum = 0 (no elements to the left of index 0)
// Right sum = nums[1] + nums[2] = 1 + -1 = 0

class LC724Tests: XCTestCase {
    
    func testFindPivotIndexOfExample1() {
        let nums = [1,7,3,6,5,6]
        
        let result = LC724().pivotIndex(nums)
        XCTAssertEqual(result, 3)
    }
    
    func testFindPivotIndexOfExample2() {
        let nums = [1,2,3]
        
        let result = LC724().pivotIndex(nums)
        XCTAssertEqual(result, -1)
    }
    
    func testFindPivotIndexOfExample3() {
        let nums = [2,1,-1]
        
        let result = LC724().pivotIndex(nums)
        XCTAssertEqual(result, 0)
    }
}
