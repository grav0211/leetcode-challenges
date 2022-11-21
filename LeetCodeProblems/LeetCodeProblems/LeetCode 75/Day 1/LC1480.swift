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
//
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
//
//
// Constraints:
//
// 1 <= nums.length <= 1000
// -10^6 <= nums[i] <= 10^6

public class LC1480 {
    public init() {}
    
    public func runningSum(_ nums: [Int]) -> [Int] {
        var totalSum = nums.reduce(0, +)
        var runningSumArray = [Int]()
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            runningSumArray.insert(totalSum, at: 0)
            totalSum -= nums[i]
        }
        
        return runningSumArray
    }
}
