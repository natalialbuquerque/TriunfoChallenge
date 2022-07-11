//
//  FeaturedViewController.swift
//  TriunfoChallenge
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 04/07/22.
//

import UIKit

class FeaturedViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet var popularCollectionView: UICollectionView!
    @IBOutlet var nowPlayingCollectionView: UICollectionView!
    @IBOutlet var upcomingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        popularCollectionView.dataSource = self
        popularCollectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // Número de itens que tem na seção. Nesse caso, na collection view.
        return 1 //uma célula (quantidade de célula)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // célula para o item tal. Vai construir a célula.
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularCell", for: indexPath) as? PopularCollectionViewCell{
            // quando colocar as? PopularCollectionViewCell traz as propriedades da PopularCollectionViewCell
            // as? tem esse ? tá dizendo que talvez isso não exista
            cell.title.text = "Título do filme"
            // .text é uma propriedade
            cell.image.image = UIImage()
            
            
        }
       
        // .image é uma propriedade
        return cell ?? UICollectionViewCell() //retorna a cell e se nao existir (como disse ali no as?), retorna uma UICollectionViewCell() vazia
    
    }
    


}

