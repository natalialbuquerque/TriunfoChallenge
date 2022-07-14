//
//  DetailsViewController.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 13/07/22.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet var backdropImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var posterImage: UIImageView!
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var overviewLabel: UILabel!
    
    
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(movie)
        
        
        guard let movie = movie else {
            return
        }
        
        title = movie.title
        // esse title é uma propriedade que vem pronta no UIViewController
        backdropImage.image = UIImage(named: movie.backdrop)
        titleLabel.text = movie.title
        posterImage.image = UIImage(named: movie.poster)
        ratingLabel.text = "Rating: \(movie.voteAverage)/10"
        overviewLabel.text = movie.overview
        
        
    }
    
    
}
