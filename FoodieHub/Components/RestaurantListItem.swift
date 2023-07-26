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

struct RestaurantListItem: View {
//    var restaurant : Restaurant
    var title, subtitle, logo: String
    
    var body: some View {
        HStack {
            Image(logo)
                .resizable()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .clipped()
            
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                Text(subtitle)
                    .font(.system(size: 15))
                    .fontWeight(.regular)
            }
            
        }
    }
}

struct RestaurantListItem_Previews: PreviewProvider {
    static var previews: some View {
//        RestaurantListItem(title: "Kichi-Kichi", subtitle: "Rotary Express Hotpot")
        RestaurantListItem(title: "King BBQ", subtitle: "King of Korean grill", logo: "kingbbq")
    }
}
