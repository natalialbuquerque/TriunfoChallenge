//
//  TrendingTableViewCell.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 18/07/22.
//

import UIKit

class TrendingTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "trendingTableViewCell"
    
    @IBOutlet var imageCell: UIImageView!
    
    @IBOutlet var imageTableViewCell: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    
    func setup(title: String, image: UIImage, year: String){
        titleLabel.text = title
        imageTableViewCell.image = image
        dateLabel.text = year
    }
        


}
