/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2023B
 Assessment: Assignment 1
 Author: Nguyen Quang Duy
 ID: 3877991
 Created  date: 25/07/2023
 Last modified: to be added
 Acknowledgement: COSC2659's Lecture slides
 */

import SwiftUI

struct NavigationListView: View {
    @State private var isActive : Bool = false
    
    var body: some View {
        VStack {
            NavigationView{
                List(restaurants) {
                    restaurant in
                    NavigationLink {
                        DetailView(restaurant: restaurant)
                    } label: {
                        ListItem(restaurant: restaurant)
                    }
                }
                .toolbar{
                    ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                        Text("Foodie Hub")
                            .font(Font.custom("NotoSerif-Medium", size: 30))
                            .foregroundColor(Color("Primary"))
                    }
                    ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                        DarkModeToggle()
                    }
                }
            }
            .accentColor(.accentColor)
        }
    }
}

struct NavigationListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationListView()
    }
}
