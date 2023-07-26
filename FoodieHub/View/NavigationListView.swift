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

struct NavigationListView: View {
    var body: some View {
//        NavigationLink{
            List {
                RestaurantListItem(title: "King BBQ", subtitle: "King of Korean grill", logo: "kingbbq")
                RestaurantListItem(title: "GoGi House", subtitle: "Korean BBQ Restaurant", logo:"app-logo")
                RestaurantListItem(title: "Hutong", subtitle: "Hotpot Paradise", logo: "kingbbq")
            }
//        }
    }
}

struct NavigationListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationListView()
    }
}
