//
//  ContentView.swift
//  Adaptation
//
//  Created by Артем Буторин on 30.04.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TrivialManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Omega Game")
                        .lilacTitle()
                    
                    Text("Вы уверены, что готовы проверить свои скилы?")
                        .foregroundColor(Color("AccentColor"))
                }
                
                NavigationLink {
                    TriviaView()
                        .environmentObject(triviaManager)
                } label: {
                    PrimaryButton(text: "Поехали!")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 0.984313, green: 0.929411, blue: 0.847058))
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}