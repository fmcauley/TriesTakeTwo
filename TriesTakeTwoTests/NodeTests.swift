//
//  NodeTests.swift
//  TriesTakeTwoTests
//
//  Created by Frank McAuley on 10/30/20.
//

import XCTest
@testable import TriesTakeTwo

class NodeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatNodeIsNotNil() throws {
        let node = Node()
        XCTAssertNotNil(node)
    }
    
    func testThatNodeWhenInitalizedTheNodeMayHaveAValue() {
        let node = Node()
        node.value = "test"
        let output = node.value
        let expected = "test"
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatANodeHasAnArrayOfChildrenNodes() {
        let node = Node()
        let output = node.children
        XCTAssertNotNil(output)
    }
    
    func testThatANodeWithAChildEntryHasAValue() {
        let node = Node()
        let childNode = Node()
        let value = "Frank"
        childNode.value = value
        node.children[value] = childNode
        let output = node.children[value]?.value
        
        XCTAssertEqual(output, value)
    }
}
