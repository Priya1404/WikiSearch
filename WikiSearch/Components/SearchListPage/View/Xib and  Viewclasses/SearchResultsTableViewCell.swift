//
//  SearchResultsTableViewCell.swift
//  WikiSearch
//
//  Created by Priya Srivastava on 06/01/21.
//

import UIKit

class SearchResultsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageWidthConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        descriptionLabel.numberOfLines = 1
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func updateCellView(details: [String: AnyObject]) {
        titleLabel.text = details[DetailKeys.title.rawValue] as? String
        descriptionLabel?.text = details[DetailKeys.description.rawValue] as? String
        imageview.setImage(fromUrl: details[DetailKeys.image.rawValue] as? String)
        imageHeightConstraint.constant = details[DetailKeys.imageHeight.rawValue] as? CGFloat ?? 0
        imageWidthConstraint.constant = details[DetailKeys.imageWidth.rawValue] as? CGFloat ?? 0
    }
}
