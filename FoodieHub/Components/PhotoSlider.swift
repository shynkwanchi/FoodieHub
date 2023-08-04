/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 29/07/2023
  Last modified: 05/08/2023
  Acknowledgement: YouTube
*/

import SwiftUI

struct PhotoSlider: View {
    var photos: [String]
    
    var body: some View {
        TabView {
            ForEach(photos, id: \.self) { photo in
                VStack {
                    Image(photo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .interactive))
        .frame(height: 300)
        .background(Color("PhotoSlider"))
        .cornerRadius(10)
    }
}

struct ImageCarousel_Previews: PreviewProvider {
    static var previews: some View {
        PhotoSlider(photos: restaurants[0].photos)
    }
}
