//
//  CurrentWeatherViewModel.swift
//  brightsky
//
//  Created by Aizat Ozbekova on 8/12/23.
//

import Foundation

enum WeatherViewModel {
    case current(viewModel: CurrentWeatherCollectionViewCellViewModel)
    case hourly(viewModels: [HourlyWeatherCollectionViewCellViewModel])
    case daily(viewModels: [DailyWeatherCollectionViewCellViewModel])
}
