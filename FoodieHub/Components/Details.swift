/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 28/07/2023
  Last modified: to be added
  Acknowledgement: None
*/

import SwiftUI

struct Details: View {
    var restaurant: Restaurant;
    
    var body: some View {
        VStack(alignment: .leading) {
            DetailItem(icon: "mappin", content: restaurant.address)
            DetailItem(icon: "clock", content: "\(restaurant.businessHours.opening) - \(restaurant.businessHours.closing)")
            DetailItem(icon: "star", content: String(restaurant.rating))
        }
        .padding(.vertical, 5)
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details(restaurant: restaurants[9])
    }
}
