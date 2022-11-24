//
//  LC392.swift
//  LeetCodeProblems
//
//  Created by Alexandre Gravelle on 2022-11-23.
//

import Foundation

// 392. Is Subsequence
// Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
//
// A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).
//
// Constraints:
//
// 0 <= s.length <= 100
// 0 <= t.length <= 104
// s and t consist only of lowercase English letters.

public class LC392 {
    public init() {}
    
    public func isSubsequence(_ s: String, _ t: String) -> Bool {
        var sPointer = 0
        var tPointer = 0
        
        let sArray = s.map { $0.unicodeScalars }
        let tArray = t.map { $0.unicodeScalars }
        
        let sCount = sArray.count
        let tCount = tArray.count
        
        while sPointer < sCount && tPointer < tCount {
            if areEqual(sChar: sArray[sPointer], tChar: tArray[tPointer]) {
                sPointer += 1
            }
            
            tPointer += 1
        }
        
        return sPointer == sCount
    }
    
    private func areEqual(sChar: String.UnicodeScalarView, tChar: String.UnicodeScalarView) -> Bool {
        return sChar.description == tChar.description
    }
}
