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

struct ListItem: View {
    var restaurant : Restaurant
    
    var body: some View {
        HStack {
            Image(restaurant.logo)
                .resizable()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .clipped()
            
            VStack(alignment: .leading, spacing: 5) {
                Text(restaurant.title)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                Text(restaurant.subtitle)
                    .font(.system(size: 15))
                    .fontWeight(.regular)
            }
            
        }
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListItem(restaurant: restaurants[9])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
