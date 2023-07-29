//
//  DetailView.swift
//  FoodieHub
//
//  Created by Duy Nguyen Quang on 25/07/2023.
//

import SwiftUI

struct DetailView: View {
    var restaurant : Restaurant
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(
                    latitude: restaurant.mapCoordinates.latitude,
                    longitude: restaurant.mapCoordinates.longitude
                )
                Card(title: restaurant.title, subtitle: restaurant.subtitle, logo: restaurant.logo)
                    .offset(y: -100.0)
                    .padding(.bottom, -90)
                                
                VStack(alignment: .leading) {
                    Divider()
                    Text("Details")
                        .font(Font.custom("NotoSerif-Medium", size: 24))
                    Details(restaurant: restaurant)
                    
                    Divider()
                    Text("About")
                        .font(Font.custom("NotoSerif-Medium", size: 24))
                    Text(restaurant.description)
                        .font(Font.custom("NotoSerif-Light", size: 18))
                        .padding(.bottom, 1)
                    HStack {
                        Spacer()
                        
                        Button {
                            if let url = URL(string: restaurant.website) {
                                UIApplication.shared.open(url)
                            }
                        } label: {
                            Image(systemName: "link")
                                .padding(.trailing, 5.0)
                            Text("Visit \(restaurant.title)'s website")
                                .font(Font.custom("NotoSerif-Regular", size: 20))
                        }
                        .buttonStyle(.borderedProminent)
                        .controlSize(.large)
                        .padding(.vertical, 10)
                        
                        Spacer()
                    }
                    
                    Divider()
                    Text("Gallery")
                        .font(Font.custom("NotoSerif-Medium", size: 24))
                    PhotoSlider(photos: restaurant.photos)
                }
                .padding(.horizontal, 15)
                .padding(.bottom, 25)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(restaurant: restaurants[0])
    }
}
