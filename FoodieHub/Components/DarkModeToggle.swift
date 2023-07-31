/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2023B
 Assessment: Assignment 1
 Author: Nguyen Quang Duy
 ID: 3877991
 Created  date: 31/07/2023
 Last modified: to be added
 Acknowledgement: https://www.youtube.com/watch?v=b5KZqZYvKmg
 */

import SwiftUI

struct DarkModeToggle: View {
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
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

struct DarkModeToggle_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeToggle()
    }
}
