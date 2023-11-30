//
//  LocationManager.swift
//  brightsky
//
//  Created by Aizat Ozbekova on 28/11/23.
//

import CoreLocation
import Foundation

final class LocationManager: NSObject, CLLocationManagerDelegate {
    
    private let manager = CLLocationManager()
    
    static let shared = LocationManager()
    
    public func getCurrentLocation() {
        manager.requestWhenInUseAuthorization()
        manager.delegate = self
        manager.startUpdatingLocation()
    }
    
    //MARK: - Location
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        manager.stopUpdatingLocation()
    }
}
