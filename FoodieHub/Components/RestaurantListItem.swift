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
    
    var body: some View {
        HStack {
            Image("app-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Gogi House")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                Text("Korean BBQ stall")
                    .font(.system(size: 15))
                    .fontWeight(.regular)
            }
            
        }
    }
}

struct RestaurantListItem_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantListItem()
    }
}
