//
//  TriviaView.swift
//  Adaptation
//
//  Created by Артем Буторин on 30.04.2022.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TrivialManager
    
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Omega Game")
                    .lilacTitle()
                
                Text("Поздравляем, вы прошли игру!")
                
                Text("Вы заработали \(triviaManager.score) из \(triviaManager.length) токенов")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Сыграть снова")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Back"))
            .navigationBarHidden(true)
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TrivialManager())
    }
}
