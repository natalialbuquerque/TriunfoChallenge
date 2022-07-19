//
//  TrendingViewController.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 12/07/22.
//

import UIKit

class TrendingViewController: UIViewController{
    
    var trendingThisWeekMovies: [Movie] = []
    var trendingTodayMovies: [Movie] = []
    
    
    
    @IBOutlet var trendingTableView: UITableView!
    @IBOutlet var segmentedControl: UISegmentedControl!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trendingTableView.delegate = self
        trendingTableView.dataSource = self
        
        Task {
            self.trendingTodayMovies = await Movie.trendingTodayAPI()
            self.trendingTableView.reloadData()
        }
        
        Task {
            self.trendingThisWeekMovies = await Movie.trendingThisWeekAPI()
            self.trendingTableView.reloadData()
        }

    }
    
    
    //@IBAction func segmentedChanged(_ sender: Any) {
            //}
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
        
        }
        else if sender.selectedSegmentIndex == 1 {
        }
        trendingTableView.reloadData()
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailsViewController{
            let movie = sender as? Movie
            destination.movie = movie
        }
    }
 
}
