//
//  MapView.swift
//  ServicesApp
//
//  Created by Praveen A on 06/03/26.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 12.9640, longitude: 80.2436),
                                                   span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    private let locations: [MapLocation] = [
        MapLocation(name: "Chennai", coordinate: CLLocationCoordinate2D(latitude: 12.9640, longitude: 80.2436))
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { location in
            MapMarker(coordinate: location.coordinate, tint: .red)
        }
        .frame(height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color(.systemGray4))
        }
    }
}

#Preview {
    MapView()
}
