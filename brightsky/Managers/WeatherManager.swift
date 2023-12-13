//
//  WeatherManager.swift
//  brightsky
//
//  Created by Aizat Ozbekova on 28/11/23.
//

import CoreLocation
import WeatherKit
import Foundation

final class WeatherManager {
    static let shared = WeatherManager()
    
    let service = WeatherService.shared
    
    public private(set) var currentWeather: CurrentWeather?
    public private(set) var hourlyWeather: [HourWeather] = []
    public private(set) var dailyWeather: [DayWeather] = []

    private init() {}
    
    public func getWeather(for location: CLLocation, completion: @escaping () -> Void) {
        Task {
            do {
                let result = try await service.weather(for: location)
                
                print("Current: \(result.currentWeather)")
                print("Hourly: \(result.hourlyForecast)")
                print("Daily: \(result.dailyForecast)")
                
                self.currentWeather = result.currentWeather
                self.dailyWeather = result.dailyForecast.forecast
                self.hourlyWeather = result.hourlyForecast.forecast
                
                ()
            } catch {
                print("\n\nError"+String(describing: error))
            }
        }
    }
    
    
    
}
