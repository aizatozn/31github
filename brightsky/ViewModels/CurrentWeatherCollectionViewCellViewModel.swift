//
//  CurrentWeatherCollectionViewCellViewModel.swift
//  brightsky
//
//  Created by Aizat Ozbekova on 8/12/23.
//

import WeatherKit
import Foundation

struct CurrentWeatherCollectionViewCellViewModel {
    private let model: CurrentWeather
    
    init(model: CurrentWeather) {
        self.model = model
    }
}
