/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 25/07/2023
  Last modified: 01/08/2023
  Acknowledgement: COSC2659's Lecture slides
*/

import SwiftUI

struct ContentView: View {
    @State var isWelcomeViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isWelcomeViewActive {
                WelcomeView(isActive: $isWelcomeViewActive)
            }
            else {
                NavigationListView()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
