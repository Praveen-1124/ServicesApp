//
//  MapLocation.swift
//  ServicesApp
//
//  Created by Praveen A on 07/03/26.
//

import Foundation
import CoreLocation

struct MapLocation: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
