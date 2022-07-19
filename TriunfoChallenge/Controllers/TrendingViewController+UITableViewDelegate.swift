//
//  TrendingViewController+UITableViewDelegate.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 18/07/22.
//

import UIKit

extension TrendingViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let movie: Movie = trendingTodayMovies[indexPath.row]
        //self.performSegue(withIdentifier: "detailsSegue", sender: movie)
        
        let movieToday: Movie = trendingTodayMovies[indexPath.row]
        let movieThisWeek: Movie = trendingThisWeekMovies[indexPath.row]
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            
            return self.performSegue(withIdentifier: "detailsSegue", sender: movieToday)
        case 1:
            return self.performSegue(withIdentifier: "detailsSegue", sender: movieThisWeek)
        default:
            break
        }
        
//        let moviePopularSeeAll: Movie = trendingTodayMovies[indexPath.row]
//        self.performSegue(withIdentifier: "popularSeAllSegue", sender: moviePopularSeeAll)
//        
//        let movieNowPlayingSeeAll: Movie = trendingTodayMovies[indexPath.row]
//        self.performSegue(withIdentifier: "nowPlayingSeAllSegue", sender: movieNowPlayingSeeAll)
//        
//        let movieUpcomingSeeAll: Movie = trendingTodayMovies[indexPath.row]
//        self.performSegue(withIdentifier: "upcomingSeAllSegue", sender: movieUpcomingSeeAll)
    }
    
}

