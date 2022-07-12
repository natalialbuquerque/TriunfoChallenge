//
//  FeaturedViewController.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 04/07/22.
//

import UIKit

class FeaturedViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let popularMovies = Movie.popularMovies()
    let nowPlayingMovies = Movie.nowPlayingMovies()
    let upcomingMovies = Movie.upcomingMovies()
    
    
    
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
        
       // upcomingCollectionView.dataSource = self
        // upcomingCollectionView.delegate = self
        
    }
    
}

