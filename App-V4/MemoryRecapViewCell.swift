//
//  MemoryRecapViewCell.swift
//  App-V4
//
//  Created by SDC-USER on 21/11/25.
//

import UIKit

class MemoryRecapViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subTitleLabel: UILabel!
    
    @IBOutlet weak var viewLabel: UIView!
    
    func configure() {
//        titleLabel.text = "Memory Recap"
//        subTitleLabel.text = "A look back at your beautiful moments"
        
        viewLabel.clipsToBounds = true
        viewLabel.layer.shadowColor = UIColor.orange.cgColor
        viewLabel.layer.shadowOpacity = 0.4
        viewLabel.layer.shadowOffset = CGSize(width: 0, height: 3)
        viewLabel.layer.shadowRadius = 2
        viewLabel.layer.masksToBounds = false
        viewLabel.layer.cornerRadius = 34
    }
}
