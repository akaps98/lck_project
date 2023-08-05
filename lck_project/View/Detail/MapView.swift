/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Junsik Kang
  ID: s3916884
  Created  date: 01/08/2023
  Last modified: 01/08/2023
  Acknowledgement: https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-annotations-in-a-map-view
*/

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
