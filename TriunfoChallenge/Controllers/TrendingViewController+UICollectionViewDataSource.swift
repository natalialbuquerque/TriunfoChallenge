//
//  TrendingViewController+UICollectionViewDataSource.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 12/07/22.
//

import UIKit

extension TrendingViewController{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "trendingCell", for: indexPath) as? TrendingCollectionViewCell
        
        cell?.title.text = trendingTodayMovies[indexPath.item].title
        cell?.dateLabel.text = trendingTodayMovies[indexPath.item].releaseDate
        cell?.image.image = UIImage(named: trendingTodayMovies[indexPath.item].poster)
        
        return cell ?? UICollectionViewCell()
    }
}
