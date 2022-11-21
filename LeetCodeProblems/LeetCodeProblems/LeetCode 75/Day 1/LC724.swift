//
//  LC724.swift
//  LeetCodeProblems
//
//  Created by Alexandre Gravelle on 2022-11-21.
//

import Foundation

// 724. Find Pivot Index
//
// Given an array of integers nums, calculate the pivot index of this array.
//
// The pivot index is the index where the sum of all the numbers strictly to the left of the index is equal to the sum of all the numbers strictly to the index's right.
//
// If the index is on the left edge of the array, then the left sum is 0 because there are no elements to the left. This also applies to the right edge of the array.
//
// Return the leftmost pivot index. If no such index exists, return -1.
//
// Constraints:
//
// 1 <= nums.length <= 104
// -1000 <= nums[i] <= 1000

public class LC724 {
    public init() {}
    
    public func pivotIndex(_ nums: [Int]) -> Int {
        let sum = nums.reduce(0, +)
        var leftsum: Int = 0

        for i in 0..<nums.count {
            let rightsum = sum - leftsum - nums[i]
            if leftsum == rightsum {
                return i
            }
            else {
                leftsum += nums[i]
            }
        }
        return -1
    }
}
