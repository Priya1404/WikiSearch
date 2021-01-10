//
//  Constants.swift
//  WikiSearch
//
//  Created by Priya Srivastava on 06/01/21.
//

import Foundation
import UIKit

let IS_IPAD = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad

struct WikiConstants {
    
    struct ReuseIdentifiers {
        static let SearchResultsCell = "SearchResultsCell"
    }
    
    struct StoryBoardIDs {
        static let Main = "Main"
        static let SearchList = "SearchList"
        static let SearchView = "SearchView"
    }
    
    struct ViewControllerIds {
        static let SearchResultsTableViewController = "SearchResultsTableViewController"
        static let SearchViewViewController = "SearchViewViewController"
    }
}
