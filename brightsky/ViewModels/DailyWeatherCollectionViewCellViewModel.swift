//
//  DailyWeatherCollectionViewCellViewModel.swift
//  brightsky
//
//  Created by Aizat Ozbekova on 8/12/23.
//

import WeatherKit
import Foundation

struct DailyWeatherCollectionViewCellViewModel {
    private let model: DayWeather
    
    init(model: DayWeather) {
        self.model = model
    }
}
