//
//  ImageDownloader.swift
//  WikiSearch
//
//  Created by Priya Srivastava on 09/01/21.
//

import Foundation
import UIKit

class ImageDownloader: NSObject {
    
    static let sharedInstance = ImageDownloader()
    
    ///Download image from server and save as cache
    func getImage(fromUrl urlStringurl: String, completion: @escaping (UIImage) -> ()) {
        if let image = imageCache.getImage(forKey: urlStringurl) {
            completion(image)
        }
        else {
            if let url = URL(string: urlStringurl) {
                URLSession.shared.dataTask(with: url) { data, response, error in
                    if error != nil {
                        return
                    }
                    if let data = data, let image = UIImage(data: data) {
                        imageCache.addImage(image, key: urlStringurl)
                        completion(image)
                    }
                }.resume()
            }
        }
    }
}
