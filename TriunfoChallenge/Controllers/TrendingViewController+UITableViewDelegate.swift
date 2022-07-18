//
//  TrendingViewController+UITableViewDelegate.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 18/07/22.
//

import UIKit

extension TrendingViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie: Movie = trendingTodayMovies[indexPath.row]
        self.performSegue(withIdentifier: "detailSegue", sender: movie)
    }
    
}
