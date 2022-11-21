//
//  LC1480Tests.swift
//  LeetCodeProblemsTests
//
//  Created by Alexandre Gravelle on 2022-11-21.
//

import XCTest
import LeetCodeProblems

class LC1480Tests: XCTestCase {
    
    func testRunningSumOf1_2_3_4() {
        let nums = [1,2,3,4]
        
        let result = LC1480().runningSum(nums)
        XCTAssertEqual(result, [1,3,6,10])
    }
    
    func testRunningSumOf1_1_1_1_1() {
        let nums = [1,1,1,1,1]
        
        let result = LC1480().runningSum(nums)
        XCTAssertEqual(result, [1,2,3,4,5])
    }
    
    func testRunningSumOf3_1_2_10_1() {
        let nums = [3,1,2,10,1]
        
        let result = LC1480().runningSum(nums)
        XCTAssertEqual(result, [3,4,6,16,17])
    }
}
