//
//  FeaturedViewController.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 04/07/22.
//

import UIKit

class FeaturedViewController: UIViewController {
    
    var popularMovies: [Movie] = []// Movie.popularMovies()
    var nowPlayingMovies: [Movie] = []//Movie.nowPlayingMovies()
    var upcomingMovies: [Movie] = [] //Movie.upcomingMovies()
    
    // let nowPlayingMovies = Movie.nowPlayingMovies
    
    
    @IBOutlet var popularCollectionView: UICollectionView!
    @IBOutlet var nowPlayingCollectionView: UICollectionView!
    @IBOutlet var upcomingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        popularCollectionView.dataSource = self
        popularCollectionView.delegate = self
        
        nowPlayingCollectionView.dataSource = self
        nowPlayingCollectionView.delegate = self
        
        upcomingCollectionView.dataSource = self
        upcomingCollectionView.delegate = self
        
        Task {
            self.popularMovies = await Movie.popularMoviesAPI()
            self.popularCollectionView.reloadData()
        }
        
        Task {
            self.nowPlayingMovies = await Movie.nowPlayingMoviesAPI()
            self.nowPlayingCollectionView.reloadData()
        }
        
        Task {
            self.upcomingMovies = await Movie.upcomingMoviesAPI()
            self.upcomingCollectionView.reloadData()
        }
        
        
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // preparar a segue
        if let destination = segue.destination as? DetailsViewController{
            // vai passar para a próxima tela
            let movie = sender as? Movie
            destination.movie = movie
        } else if let destination = segue.destination as? SeeAllViewController{
            if segue.identifier == "popularSeeAllSegue"{
                destination.movies = popularMovies
                destination.title = "Popular"
            } else if segue.identifier == "nowPlayingSeeAllSegue"{
                destination.movies = nowPlayingMovies
                destination.title = "Now Playing"
            } else if segue.identifier == "upcomingSeeAllSegue"{
                destination.movies = upcomingMovies
                destination.title = "Upcoming"
            } 
           
        }
        
    }

}
