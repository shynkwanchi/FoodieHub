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
        VStack(alignment: .leading) {
            Card(restaurant: restaurant)
            
            Divider()
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Details")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .font(.system(size: 24))
                    Details(restaurant: restaurant)
                    
                    Divider()
                    
                    Text("About")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .font(.system(size: 24))
                    Text(restaurant.description)
                        .font(.system(size: 18))
                        .padding(.vertical, 1)
                    
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
                                .font(.system(size: 20))
                        }
                        .buttonStyle(.borderedProminent)
                        .controlSize(.large)
                        .padding(.vertical, 10)
                        
                        Spacer()
                    }
                    Divider()
                    
                    Text("Gallery")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .font(.system(size: 24))
                }
            }
        }
        .padding(.horizontal, 15)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(restaurant: restaurants[5])
    }
}
