/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 28/07/2023
  Last modified: 31/07/2023
  Acknowledgement: None
*/

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
                .foregroundColor(Color("Primary"))
            Text(subtitle)
                .font(Font.custom("NotoSerif-Light", size: 18))
                .foregroundColor(Color("Secondary"))
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(title: restaurants[0].title, subtitle: restaurants[0].subtitle, logo: restaurants[0].logo)
    }
}
