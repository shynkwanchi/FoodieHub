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

struct IntroductionView: View {
    @Binding var isActive : Bool
    @State private var showAlert : Bool = false
    
    var body: some View {
        ZStack {           
            VStack {
                // Header section
                Image("rmit-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                
                Spacer()
                
                // Main Section
                Image("app-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                Text("Foodie Hub")
                    .font(.system(size: 40))
                    .fontWeight(.semibold)
                    .padding(.vertical, 5.0)
                Text("Enjoy your meal in your favourite restaurant.")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30.0)
                Button {
                    isActive = false
                } label: {
                    Text("Let's Go!")
                        .font(.system(size: 24))
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Spacer()
                
                // Footer section
                HStack {
                    Spacer()
                    Button {
                        showAlert = true
                    } label: {
                        Image(systemName: "info.circle")
                            .imageScale(.large)
                    } .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Application author"),
                            message: Text("Nguyen Quang Duy\ns3877991\nBachelor of Information Technology")
                        )
                    }
                }
            }
            .padding()
        }
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView(isActive: .constant(true))
    }
}
