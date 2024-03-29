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

struct WelcomeView: View {
    @Binding var isActive : Bool
    @State private var showAlert : Bool = false
    
    var body: some View {
        VStack {
            Image("RMIT")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
            
            Spacer()
            
            Image("Foodie Hub")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
            Text("Foodie Hub")
                .font(Font.custom("NotoSerif-Medium", size: 40))
                .padding(.vertical, 5.0)
            Text("Enjoy your meal in your favourite restaurant.")
                .font(Font.custom("NotoSerif-Light", size: 20))
                .foregroundColor(Color("Secondary"))
                .multilineTextAlignment(.center)
                .padding(.bottom, 30.0)
            Button {
                isActive = false
            } label: {
                Text("Let's Go!")
                    .font(Font.custom("NotoSerif-Regular", size: 24))
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.accentColor)
            
            Spacer()
            
            HStack {
                Spacer()
                Button {
                    showAlert = true
                } label: {
                    Image(systemName: "info.circle")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
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

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(isActive: .constant(true))
    }
}
