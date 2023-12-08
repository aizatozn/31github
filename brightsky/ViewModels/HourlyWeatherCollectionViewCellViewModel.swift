//
//  HourlyWeatherCollectionViewCellViewModel.swift
//  brightsky
//
//  Created by Aizat Ozbekova on 8/12/23.
//

import WeatherKit
import Foundation

struct HourlyWeatherCollectionViewCellViewModel {
    private let model: HourWeather
    
    init(model: HourWeather) {
        self.model = model
    }
}
