//
//  Card.swift
//  FoodieHub
//
//  Created by Duy Nguyen Quang on 28/07/2023.
//

import SwiftUI

struct Card: View {
    var restaurant : Restaurant
    
    var body: some View {
        HStack(spacing: 15) {
            Image(restaurant.logo)
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
                .clipped()
            
            VStack(alignment: .leading, spacing: 10) {
                Text(restaurant.title)
                    .font(.system(size: 30))
                    .fontWeight(.medium)
                Text(restaurant.subtitle)
                    .font(.system(size: 18))
                    .fontWeight(.regular)
            }
            
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(restaurant:  restaurants[9])
    }
}
