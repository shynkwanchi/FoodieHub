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

struct WelcomeView: View {
    @State var isWelcomeViewActive: Bool = true
    
    var body: some View {
        if isWelcomeViewActive {
            IntroductionView(isActive: $isWelcomeViewActive)
        }
        else {
            NavigationListView()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
