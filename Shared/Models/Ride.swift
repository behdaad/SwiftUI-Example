//
//  Ride.swift
//  SNPSwiftUI
//
//  Created by Behdad Keynejad on 4/15/1399 AP.
//

import SwiftUI
import CoreLocation

struct Ride: Identifiable {
    var id: Int
    var title: String
    var originCoordinate: CLLocationCoordinate2D
    var destinationCoordinate: CLLocationCoordinate2D
    var originAddress: String
    var destinationAddress: String
    var cost: String
    var isCancelled: Bool
}

let testRides = [
    Ride(id: 0, title: "Friday night", originCoordinate: CLLocationCoordinate2D(latitude: 35.773199, longitude: 51.418360), destinationCoordinate: CLLocationCoordinate2D(latitude: 35.780089, longitude: 51.450591), originAddress: "Hello st, 15", destinationAddress: "Goodbye st, 16", cost: "14,500", isCancelled: true),
    
    Ride(id: 1, title: "Saturday night", originCoordinate: CLLocationCoordinate2D(latitude: 35.973199, longitude: 51.488360), destinationCoordinate: CLLocationCoordinate2D(latitude: 36.780089, longitude: 51.350591), originAddress: "Hello Hello Hello st, 15", destinationAddress: "Goodbye Goodbye Goodbye st, 16", cost: "25,999", isCancelled: false),
    
    Ride(id: 2, title: "Sunday night", originCoordinate: CLLocationCoordinate2D(latitude: 35.743199, longitude: 51.458360), destinationCoordinate: CLLocationCoordinate2D(latitude: 35.700089, longitude: 51.400591), originAddress: "Hello st, 15", destinationAddress: "Goodbye st, 16", cost: "14,500", isCancelled: true),
    
    Ride(id: 3, title: "Monday night", originCoordinate: CLLocationCoordinate2D(latitude: 35.803199, longitude: 51.318360), destinationCoordinate: CLLocationCoordinate2D(latitude: 35.680089, longitude: 51.350591), originAddress: "Hello st, 15", destinationAddress: "Goodbye st, 16", cost: "14,500", isCancelled: false),
    
    Ride(id: 4, title: "Tuesday night", originCoordinate: CLLocationCoordinate2D(latitude: 35.779199, longitude: 51.425360), destinationCoordinate: CLLocationCoordinate2D(latitude: 35.280089, longitude: 51.950591), originAddress: "Hello st, 15", destinationAddress: "Goodbye st, 16", cost: "14,500", isCancelled: false),
]
