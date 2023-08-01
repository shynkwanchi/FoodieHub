/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 25/07/2023
  Last modified: to be added
  Acknowledgement: COSC2659's Lecture slides, Hacking with Swift [https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-segmented-control-and-read-values-from-it] [https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-a-search-bar-to-filter-your-data]
*/

import SwiftUI

struct NavigationListView: View {
    // This state variable is used to store search Text
    @State private var searchText : String = ""
    
    // This state variable is used to store rating range options
    @State private var rating : String = "Any"
    var ratings : [String] = ["Any", "< 4.0", "4.0 to 4.5", "> 4.5"]
    
    var body: some View {
        NavigationView {
            VStack {
                VStack{
                    HStack {
                        Text("Rating")
                            .font(Font.custom("NotoSerif-Regular", size: 20))
                            .padding(.bottom, -1.0)
                        Spacer()
                    }
                    Picker("Rating", selection: $rating) {
                        ForEach(ratings, id: \.self) {
                            Text($0)
                        }
                    }
                    .padding(.bottom, 10.0)
                    .pickerStyle(SegmentedPickerStyle())
                    .colorMultiply(.accentColor)
                    
                }
                .padding(.horizontal)
                
                List(filter(searchText: searchText, rating: rating)) {
                    restaurant in NavigationLink {
                        DetailView(restaurant: restaurant)
                    } label: {
                        ListItem(title: restaurant.title, subtitle: restaurant.subtitle, logo: restaurant.logo)
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
                .listStyle(.plain)
            }
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        }
    }
}

struct NavigationListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationListView()
    }
}
