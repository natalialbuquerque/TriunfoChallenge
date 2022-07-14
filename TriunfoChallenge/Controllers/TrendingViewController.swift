//
//  TrendingViewController.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 12/07/22.
//

import UIKit

class TrendingViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let trendingThisWeekMovies = Movie.trendingThisWeekMovies()
    let trendingTodayMovies = Movie.trendingTodayMovies()
    
    @IBOutlet var trendingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trendingCollectionView.dataSource = self
        trendingCollectionView.delegate = self
    }
    /*
    @IBAction func didChangeSegment (_ sender: UISegmentedControl) -> UICollectionView{
        if sender.selectedSegmentIndex == 0{
            return trendingTodayMovies
        } else if sender.selectedSegmentIndex == 1{
            return trendingThisWeekMovies
        } else{
            return 0
        }
    } */
}
