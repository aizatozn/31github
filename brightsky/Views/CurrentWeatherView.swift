//
//  CurrentWeatherView.swift
//  brightsky
//
//  Created by Aizat Ozbekova on 29/11/23.
//

import UIKit

final class CurrentWeatherView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
