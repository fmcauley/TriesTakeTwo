//
//  Node.swift
//  TriesTakeTwo
//
//  Created by Frank McAuley on 10/30/20.
//

import Foundation

class Node {
    var value: String?
    var children:[String:Node]
    
    init() {
        self.children = [String: Node]()
    }
}
