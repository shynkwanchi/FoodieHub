//
//  ContentView.swift
//  FoodieHub
//
//  Created by Duy Nguyen Quang on 25/07/2023.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showAlert = false
    
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

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
