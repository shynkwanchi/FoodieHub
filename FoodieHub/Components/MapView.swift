/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2023B
 Assessment: Assignment 1
 Author: Nguyen Quang Duy
 ID: 3877991
 Created  date: 25/07/2023
 Last modified: to be added
 Acknowledgement: None
 */

import SwiftUI
import MapKit

struct MapLocation: Identifiable {
    var id = UUID()
    let latitude: Double
    let longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct MapView: View {
    var latitude, longitude: Double
    @State private var region = MKCoordinateRegion()
    var locations: [MapLocation]
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
        region =  MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        )
        locations = [MapLocation(latitude: latitude, longitude: longitude)]
    }
    
    var body: some View {
        VStack{
            Map(coordinateRegion: $region, interactionModes: [.pan, .zoom], annotationItems: locations) { location in
                MapMarker(coordinate: location.coordinate, tint: .green)
            }
        }
        .frame(height: 300.0)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(
            latitude: restaurants[1].mapCoordinates.latitude,
            longitude: restaurants[1].mapCoordinates.longitude
        )
    }
}
