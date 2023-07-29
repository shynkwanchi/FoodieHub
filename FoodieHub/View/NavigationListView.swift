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
        NavigationView{
            List(restaurants) {
                restaurant in
                NavigationLink {
                    DetailView(restaurant: restaurant)
                } label: {
                    ListItem(restaurant: restaurant)
                }
//                 .navigationTitle("Restaurants")
            }
        }
    }
}

struct NavigationListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationListView()
    }
}
