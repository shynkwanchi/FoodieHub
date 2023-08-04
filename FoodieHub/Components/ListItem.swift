/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 25/07/2023
  Last modified: 31/7/2023
  Acknowledgement: COSC2659's Lecture slides
*/

import SwiftUI

struct ListItem: View {
    var title, subtitle, logo: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(logo)
                .resizable()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
                .clipped()
            
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(Font.custom("NotoSerif-Regular", size: 20))
                    .foregroundColor(Color("Primary"))
                Text(subtitle)
                    .font(Font.custom("NotoSerif-Light", size: 15))
                    .foregroundColor(Color("Secondary"))
            }
        }
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListItem(title: restaurants[0].title, subtitle: restaurants[0].subtitle, logo: restaurants[0].logo)
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
