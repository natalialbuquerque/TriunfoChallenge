//
//  SeeAllTableViewCell.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 19/07/22.
//

import UIKit

class SeeAllTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "seeAllCell"

    @IBOutlet var posterImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var ratingLabel: UILabel!
    
    func setup(title: String, image: UIImage,year: String, rating: String){
        titleLabel.text = title
        posterImage.image = image
        dateLabel.text = year
        ratingLabel.text = rating
        
    }
    


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
