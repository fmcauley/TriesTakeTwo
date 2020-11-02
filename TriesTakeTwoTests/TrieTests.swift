//
//  TrieTests.swift
//  TriesTakeTwoTests
//
//  Created by Frank McAuley on 10/30/20.
//

import XCTest
@testable import TriesTakeTwo

class TrieTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTrieIsNotNil() throws {
        let trie = Trie()
        XCTAssertNotNil(trie)
    }
    
    func testThatATrieCanInsertANewValue() {
        let trie = Trie()
        let key = "apple"
        let value = "Frank"
        trie.insert(key, value)
        
        XCTAssertTrue(trie.root.children.count > 0)
    }
    
    func testThatATrieCanFindAValue() {
        let trie = Trie()
        let key = "joke"
        let value = "Eric B & Rakim"
        trie.insert(key, value)
        let output = trie.find(key)
        let expected = "Eric B & Rakim"
        
        XCTAssertEqual(output, expected)
    }
}
