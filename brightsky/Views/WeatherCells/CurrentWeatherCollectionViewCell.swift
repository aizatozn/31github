//
//  CurrentWeatherCollectionViewCell.swift
//  brightsky
//
//  Created by Aizat Ozbekova on 8/12/23.
//

import UIKit

class CurrentWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "CurrentWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public func configure(with viewModel: CurrentWeatherCollectionViewCellViewModel) {
        
    }
}
