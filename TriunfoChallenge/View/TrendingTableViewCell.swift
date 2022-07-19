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
    @IBOutlet var titleLabelCell: UILabel!
    @IBOutlet var dateLabelCell: UILabel!
    
    
    
    func setup(title: String, image: UIImage, year: String){
        titleLabelCell.text = title
        imageCell.image = image
        dateLabelCell.text = year
    }
        


}
