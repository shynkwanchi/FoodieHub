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

struct MapView: View {
    var latitude, longitude: Double
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        VStack{
            Map(coordinateRegion: $region)
                .onAppear {
                    region = MKCoordinateRegion(
                        center: CLLocationCoordinate2D(
                            latitude: latitude,
                            longitude: longitude),
                        span: MKCoordinateSpan(
                            latitudeDelta: 0.005, longitudeDelta: 0.005)
                    )
                }
        }
        .frame(height: 300.0)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(
            latitude: restaurants[9].mapCoordinates.latitude,
            longitude: restaurants[9].mapCoordinates.longitude
        )
    }
}
