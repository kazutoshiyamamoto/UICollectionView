//
//  CollectionViewCell.swift
//  UICollectionView
//
//  Created by home on 2019/01/15.
//  Copyright © 2019 Swift-beginners. All rights reserved.
//

import UIKit

// CollectionViewのCell設定
class CollectionViewCell: UICollectionViewCell {
    private let cellNameLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 15, y: 50, width: 50, height: 50)
        label.font = .systemFont(ofSize: 14, weight: UIFont.Weight(rawValue: 1))
        label.textColor = UIColor.darkGray
        label.textAlignment = .center
        return label
    }()
    
    private let cellImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 15, y: 10, width: 50, height: 50)
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        contentView.addSubview(cellImageView)
        contentView.addSubview(cellNameLabel)
    }
    
    func setUpContents(image: UIImage, textName: String) {
        cellImageView.image = image
        cellNameLabel.text = textName
    }
}
