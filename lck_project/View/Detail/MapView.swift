//
//  MapView.swift
//  lck_project
//
//  Created by Tony on 2023/08/01.
//

import SwiftUI
import MapKit

struct House: Identifiable {
    var id: UUID = UUID()
    var location: CLLocationCoordinate2D
}

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    @State private var houses = [
        House(
            location: CLLocationCoordinate2D()
        )
    ]
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: houses) {house in
            MapMarker(coordinate: coordinate, tint: .brown)
        }
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 37.52606, longitude: 126.90308))
    }
}
