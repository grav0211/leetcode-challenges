//
//  LC1480.swift
//  LeetCodeProblems
//
//  Created by Alexandre Gravelle on 2022-11-21.
//

import Foundation

// 1480. Running Sum of 1d Array
//
// Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
//
// Return the running sum of nums.
//
// Constraints:
//
// 1 <= nums.length <= 1000
// -10^6 <= nums[i] <= 10^6

public class LC1480 {
    public init() {}
    
    public func runningSumS1(_ nums: [Int]) -> [Int] {
        var totalSum = nums.reduce(0, +)
        var runningSumArray = [Int]()
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            runningSumArray.insert(totalSum, at: 0)
            totalSum -= nums[i]
        }
        
        return runningSumArray
    }
    
    public func runningSumS2(_ nums: [Int]) -> [Int] {
        var runningSum = 0
        return nums.map { num in
            runningSum += num
            return runningSum
        }
    }
}
