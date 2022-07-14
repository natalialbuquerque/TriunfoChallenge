//
//  FeaturedViewController+UICollectionViewDataSource.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 12/07/22.
//

import UIKit

extension FeaturedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // Número de itens que tem na seção. Nesse caso, na collection view.
        if collectionView == self.popularCollectionView{
            return  popularMovies.count
        } else if collectionView == self.nowPlayingCollectionView{
            return  nowPlayingMovies.count
        } else if collectionView == self.upcomingCollectionView{
            return upcomingMovies.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.popularCollectionView{
            return makePopularCell(indexPath) //retorna a cell e se nao existir (como disse ali no as?), retorna uma UICollectionViewCell() vazia
        } else if collectionView == self.nowPlayingCollectionView{
            return makeNowPlayingCell(indexPath)
        } else if collectionView == self.upcomingCollectionView{
            return makeNowPlayingCell(indexPath)
        } else {
            return UICollectionViewCell()
        }
    }
    
    fileprivate func makePopularCell( _ indexPath: IndexPath) -> PopularCollectionViewCell {
        // célula para o item tal. Vai construir a célula.
        let cell = popularCollectionView.dequeueReusableCell(withReuseIdentifier: PopularCollectionViewCell.cellIdentifier, for: indexPath) as? PopularCollectionViewCell
        // quando colocar as? PopularCollectionViewCell traz as propriedades da PopularCollectionViewCell
        // as? tem esse ? tá dizendo que talvez isso não exista
        cell?.title.text = popularMovies[indexPath.item].title
        // .text é uma propriedade
        cell?.imageView.image = UIImage(named: popularMovies[indexPath.item].backdrop)
        
        // .imageView é uma propriedade
        return cell ?? PopularCollectionViewCell()
    }
    
    fileprivate func makeNowPlayingCell(_ indexPath: IndexPath) -> NowPlayingCollectionViewCell {
        let cell = nowPlayingCollectionView.dequeueReusableCell(withReuseIdentifier: NowPlayingCollectionViewCell.cellIdentifier, for: indexPath) as? NowPlayingCollectionViewCell
        cell?.title.text = nowPlayingMovies[indexPath.item].title
        let year: String = "\(nowPlayingMovies[indexPath.item].releaseDate.prefix(4))"
        cell?.dateLabel.text = year
        cell?.imageView.image = UIImage(named: nowPlayingMovies[indexPath.item].poster)
        
        
        return cell ?? NowPlayingCollectionViewCell()
    }
    
    fileprivate func makeUpcomingCell(_ indexPath: IndexPath) -> UpcomingCollectionViewCell {
        let cell = upcomingCollectionView.dequeueReusableCell(withReuseIdentifier: UpcomingCollectionViewCell.cellIdentifier, for: indexPath) as? UpcomingCollectionViewCell
        cell?.title.text = upcomingMovies[indexPath.item].title
        cell?.dateLabel.text = upcomingMovies[indexPath.item].releaseDate
        cell?.imageView.image = UIImage(named: upcomingMovies[indexPath.item].poster)
        
        return cell ?? UpcomingCollectionViewCell()
    }
    
}
