/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 31/07/2023
  Last modified: 07/08/2023
  Acknowledgement: YouTube
*/

import SwiftUI

struct DarkModeToggle: View {
    // Set light mode as default app apearance
    @AppStorage("isDarkMode") private var isDarkMode : Bool = false
    
    var body: some View {
        ZStack{
            Button {
                isDarkMode.toggle()
            } label: {
                Image(systemName: isDarkMode ? "sun.max.fill" : "moon.fill")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)  // Switch the app appearance between light and dark mode
    }
}

struct DarkModeToggle_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeToggle()
    }
}
