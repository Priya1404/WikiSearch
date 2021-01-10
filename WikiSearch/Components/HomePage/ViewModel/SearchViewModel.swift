//
//  SearchViewModel.swift
//  WikiSearch
//
//  Created by Priya Srivastava on 07/01/21.
//

import Foundation
import UIKit

final class SearchViewModel {
    
    //MARK:- PageConstant
    struct PageConstant {
        static let titleText = "Wiki Search"
        static let searchPlaceholderText = "Enter your text here."
        static let searchButtonText = "Search"
        static let searchButtonBackground = UIColor(hexString: "deb485")!
        static let doneButtonText = "Done"
        static let labelText = "Enter number of results required!"
    }
    
    ///get placeholder text
    func getPlaceHolderText() -> String{
        return PageConstant.searchPlaceholderText
    }
    
    ///get Title text
    func getTitleText() -> String{
        return PageConstant.titleText
    }
    
    ///get search button text
    func getSearchButtonText() -> NSAttributedString{
        return NSAttributedString(string: PageConstant.searchButtonText, attributes: [.foregroundColor: UIColor.white])
    }
    
    ///get search button background
    func getSearchButtonBackground() -> UIColor {
        return PageConstant.searchButtonBackground
    }
    
    ///get done button text on keyboard
    func getDoneKeyBoardText() -> String {
        return PageConstant.doneButtonText
    }
    
    ///get label text
    func getLabelText () -> String {
        return PageConstant.labelText
    }
}
