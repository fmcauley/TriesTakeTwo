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

}
