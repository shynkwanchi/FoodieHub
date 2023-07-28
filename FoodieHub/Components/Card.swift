//
//  Card.swift
//  FoodieHub
//
//  Created by Duy Nguyen Quang on 28/07/2023.
//

import SwiftUI

struct Card: View {
    var title, subtitle, logo: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image(logo)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color(.white), lineWidth: 5))
                .shadow(radius: 5)
                .frame(width: 200, height: 200)

                Text(title)
                    .font(Font.custom("NotoSerif-Regular", size: 30))
                Text(subtitle)
                    .font(Font.custom("NotoSerif-Light", size: 18))
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(title: restaurants[9].title, subtitle: restaurants[9].subtitle, logo: restaurants[9].logo)
    }
}
