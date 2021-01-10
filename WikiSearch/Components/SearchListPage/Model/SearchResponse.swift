//
//  SearchResponse.swift
//  WikiSearch
//
//  Created by Priya Srivastava on 05/01/21.
//

import Foundation

class SearchResponse : Codable {
    let batchcomplete: Bool?
    let `continue`: GPSOffsetStruct?
    let query: PageRedirects?
}

class GPSOffsetStruct: Codable {
    let gpsoffset: Int?
    let `continue`: String?
}

class PageRedirects: Codable {
    let pages: [Pages]?
    let redirects: [Redirects]?
}

class Redirects: Codable {
    let index: Int?
    let from: String?
    let to: String?
}

class Pages: Codable {
    let pageid: Int?
    let ns: Int?
    let title: String?
    let index: Int?
    let terms: Terms?
    let thumbnail: Thumbnail?
}

class Terms: Codable {
    let description: [String]
}

class Thumbnail: Codable {
    let source: String?
    let width: Int?
    let height: Int?
}
