//
//  SeAllViewController.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 19/07/22.
//

import UIKit

class SeeAllViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var seeAllTableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        seeAllTableView.delegate = self
        seeAllTableView.dataSource = self
        
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailsViewController{
            let movie = sender as? Movie
            destination.movie = movie
        }
        
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie: Movie = movies[indexPath.row]
        performSegue(withIdentifier: "detailsSegue", sender: movie)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = seeAllTableView.dequeueReusableCell(withIdentifier: SeeAllTableViewCell.cellIdentifier, for: indexPath) as? SeeAllTableViewCell
        
        let movies = movies[indexPath.item]
        let year: String = "\(movies.releaseDate.prefix(4))"
        let rating = "\(movies.voteAverage)"
        
        cell?.setup(title: movies.title, image: UIImage(), year: year, rating: rating)
        
        
        
        Task {
            let imageData = await Movie.downloadImageData(withPath: movies.posterPath)
            let imagem: UIImage = UIImage(data: imageData) ?? UIImage()
            cell?.setup(title: movies.title, image: imagem, year: year, rating: rating)
        }
        
        
        
        return cell ?? SeeAllTableViewCell()
    }
    
    
    //porterImage, titleLabel, dateLabel, ratingLabel
    
    
}


/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */


