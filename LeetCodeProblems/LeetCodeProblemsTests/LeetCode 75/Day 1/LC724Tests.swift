//
//  LC724Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Alexandre Gravelle on 2022-11-21.
//

import XCTest
import LeetCodeProblems

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
