//
//  DailyWeatherCollectionViewCell.swift
//  brightsky
//
//  Created by Aizat Ozbekova on 8/12/23.
//

import UIKit

class DailyWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "DailyWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .purple
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
