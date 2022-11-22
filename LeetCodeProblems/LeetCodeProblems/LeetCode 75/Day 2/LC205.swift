//
//  LC205.swift
//  LeetCodeProblems
//
//  Created by Alexandre Gravelle on 2022-11-22.
//

import Foundation

// 205. Isomorphic Strings
//
// Given two strings s and t, determine if they are isomorphic.
//
// Two strings s and t are isomorphic if the characters in s can be replaced to get t.
//
// All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.

// Constraints:
//
// 1 <= s.length <= 5 * 104
// t.length == s.length
// s and t consist of any valid ascii character.

public class LC205 {
    public init() {}
    
    public func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        
        var hashmap: [Character: Character] = [:]
        var characterSet: Set<Character> = []
        
        for (characterFromS, characterFromT) in zip(s,t) {
            guard characterFromS.isASCII && characterFromT.isASCII else { return false }
            
            if hashmap[characterFromS] != nil {
                if hashmap[characterFromS] != characterFromT {
                    return false
                }
            }
            else {
                if characterSet.contains(characterFromT) {
                    return false
                }
                
                hashmap[characterFromS] = characterFromT
                characterSet.insert(characterFromT)
            }
        }
        
        return true
    }
}
