//
//  WikiSearchTests.swift
//  WikiSearchTests
//
//  Created by Priya Srivastava on 05/01/21.
//

import XCTest
@testable import WikiSearch

class WikiSearchTests: XCTestCase {
    
    var searchResultsWorker: SearchAPIWorker!
    var expec = XCTestExpectation(description: "FetchList")

    override func setUpWithError() throws {
        searchResultsWorker = SearchAPIWorker()
    }

    override func tearDownWithError() throws {
        searchResultsWorker = nil
    }

    func testSearchResultsCall() throws {
        searchResultsWorker.loadSearchResultsInfo(body: "Doctor", productCount: "20", success: { [weak self](result) in
            if let queryItems = result.query?.pages, queryItems.count > 0 {
                self?.expec.fulfill()
                XCTAssert(true, "List of search results generated")
            }
        }, failure: { (error) in
            XCTFail(error.localizedDescription)
        })
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
