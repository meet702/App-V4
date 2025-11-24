//
//  ViewController.swift
//  App-V4
//
//  Created by SDC-USER on 21/11/25.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemoryRecapCell", for: indexPath)
        guard let memoryRecapCell = cell as? MemoryRecapViewCell else { return cell }
        
        memoryRecapCell.configure()
        return cell
    }
    

    
    @IBOutlet weak var memoryRecapCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let layout = generateCompositionalLayout()
        memoryRecapCollectionView.setCollectionViewLayout(
            layout,
            animated: true
        )
        memoryRecapCollectionView.dataSource = self
    }

    func generateCompositionalLayout() -> UICollectionViewLayout {
        let size = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .fractionalHeight(1.0)
        )
        let item = NSCollectionLayoutItem(layoutSize: size)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .absolute(100)
        )
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: groupSize,
            subitems: [item]
        )
      group.interItemSpacing = .fixed(10)
        
        let section = NSCollectionLayoutSection(group: group)
        
        section.interGroupSpacing = 10
        section.contentInsets = NSDirectionalEdgeInsets(top:  0, leading: 20, bottom: 0, trailing: 20)
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }

}

