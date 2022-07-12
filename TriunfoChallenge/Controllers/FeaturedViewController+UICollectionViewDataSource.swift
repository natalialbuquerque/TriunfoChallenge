//
//  FeaturedViewController+UICollectionViewDataSource.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 12/07/22.
//

import UIKit

extension FeaturedViewController {
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
    
    fileprivate func makePopularCell( _ indexPath: IndexPath) -> UICollectionViewCell {
        // célula para o item tal. Vai construir a célula.
        let cell = popularCollectionView.dequeueReusableCell(withReuseIdentifier: "popularCell", for: indexPath) as? PopularCollectionViewCell
        // quando colocar as? PopularCollectionViewCell traz as propriedades da PopularCollectionViewCell
        // as? tem esse ? tá dizendo que talvez isso não exista
        cell?.title.text = popularMovies[indexPath.item].title
        // .text é uma propriedade
        cell?.image.image = UIImage(named: popularMovies[indexPath.item].backdrop)
        
        // .image é uma propriedade
        return cell ?? UICollectionViewCell()
    }
    
    fileprivate func makeNowPlayingCell(_ indexPath: IndexPath) -> UICollectionViewCell {
        let cell = nowPlayingCollectionView.dequeueReusableCell(withReuseIdentifier: "nowPlayingCell", for: indexPath) as? NowPlayingCollectionViewCell
        cell?.title.text = nowPlayingMovies[indexPath.item].title
        cell?.dateLabel.text = nowPlayingMovies[indexPath.item].releaseDate
        cell?.image.image = UIImage(named: nowPlayingMovies[indexPath.item].poster)
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.popularCollectionView{
            return makePopularCell(indexPath) //retorna a cell e se nao existir (como disse ali no as?), retorna uma UICollectionViewCell() vazia
        } else if collectionView == self.nowPlayingCollectionView{
            return makeNowPlayingCell(indexPath)
        } else {
            return UICollectionViewCell()
        }
    }
}
