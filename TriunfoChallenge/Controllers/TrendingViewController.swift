//
//  TrendingViewController.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 12/07/22.
//

import UIKit

class TrendingViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
  
    @IBOutlet var trendingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trendingCollectionView.dataSource = self
        trendingCollectionView.delegate = self

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // célula para o item tal. Vai construir a célula.
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "trendingCell", for: indexPath) as? PopularCollectionViewCell
        // quando colocar as? PopularCollectionViewCell traz as propriedades da PopularCollectionViewCell
        // as? tem esse ? tá dizendo que talvez isso não exista
        cell?.title.text = "Título do filme"
        // .text é uma propriedade
        cell?.image.image = UIImage()
                
        // .image é uma propriedade
        return cell ?? UICollectionViewCell() //retorna a cell e se nao existir (como disse ali no as?), retorna uma UICollectionViewCell() vazia
    }
    


}
