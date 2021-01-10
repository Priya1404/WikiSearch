//
//  SearchViewModel.swift
//  WikiSearch
//
//  Created by Priya Srivastava on 09/01/21.
//

import Foundation

class SearchViewResponse : Codable{
    let batchcomplete: String?
    let query: PageDetail?
}

class PageDetail: Codable {
    let pages: [String: Page]
}

class Page: Codable {
    let pageid: Int?
    let ns: Int?
    let title: String?
    let contentmodel: String?
    let pagelanguage: String?
    let pagelanguagehtmlcode: String?
    let pagelanguagedir: String?
    let touched: String?
    let lastrevid: Int?
    let length: Int?
    let fullurl: String?
    let editurl: String?
    let canonicalurl: String?
}
