//
//  Trie.swift
//  TriesTakeTwo
//
//  Created by Frank McAuley on 10/30/20.
//

import Foundation
class Trie {
    var root: Node
    init() {
        self.root = Node()
    }
    
    func insert(_ key:String, _ value:String) {
        var current = root
        var priorCharacter = ""
        
        for x in key {
            var char: String = ""
            
            if priorCharacter.count >= 1 {
                char = priorCharacter + String(x)
            } else {
                char = String(x)
            }
            
            if current.children[char] == nil {
                current.children[char] = Node()
            }
            if let currentNode = current.children[char] {
                current = currentNode
            }
            
            priorCharacter = char
        }
        current.value = value
    }
    
    func find(_ key: String) -> String? {
        var current = root
        var priorCharacter = ""
        
        for x in key {
            var char: String = ""
            if priorCharacter.count >= 1 {
                char = priorCharacter + String(x)
            } else {
                char = String(x)
            }

            if (current.children[char] != nil) {
                if let currentNode = current.children[char] {
                    current = currentNode
                }
            } else {
                return nil
            }
            
            priorCharacter = char
        }
        return current.value
    }
}
