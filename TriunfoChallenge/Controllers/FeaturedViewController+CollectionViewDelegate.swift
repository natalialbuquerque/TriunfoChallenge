//
//  FeaturedViewController+CollectionViewDelegate.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 13/07/22.
//

import UIKit

extension FeaturedViewController: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // funcao pronta que diz que o usuário tocou em algo
        let movie: Movie
        if collectionView == popularCollectionView{
            movie = popularMovies[indexPath.item]
        } else if collectionView == nowPlayingCollectionView{
            movie = nowPlayingMovies[indexPath.item]
        } else {
            movie = upcomingMovies[indexPath.item]
        }
        self.performSegue(withIdentifier: "detailsSegue", sender: movie)
        //performa a Segue (foi preparada em prepare for Segue em FeaturedViewController)
    }
}

