/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Quang Duy
  ID: 3877991
  Created  date: 25/07/2023
  Last modified: to be added
  Acknowledgement: COSC2659's Lecture slides, Tutorial's Sample solutions on Github [https://github.com/TomHuynhSG/SSET-Contact-List-iOS]
*/

import SwiftUI

struct WelcomeView: View {
    @State var isWelcomeViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isWelcomeViewActive {
                IntroductionView(isActive: $isWelcomeViewActive)
            }
            else {
                NavigationListView()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
