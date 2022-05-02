//
//  QuestView.swift
//  Adaptation
//
//  Created by Артем Буторин on 01.05.2022.
//

import SwiftUI

struct QuestView: View {
    @StateObject var triviaManager = TrivialManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Omega Game")
                        .lilacTitle()
                    
                    Text("Вы уверены, что готовы проверить свои скилы?\nВнимание! Все вопросы и ответы на английском.")
                        .foregroundColor(.white)
                }
                
                HStack {
//                    NavigationLink {
//                        StoryView()
//                    } label: {
//                        PrimaryButton(text: "Не уверен", background: .gray)
//                    }
                    NavigationLink {
                        TriviaView()
                            .environmentObject(triviaManager)
                    } label: {
                        PrimaryButton(text: "Поехали!")
                    }
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color("Back"))
            .navigationBarHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct QuestView_Previews: PreviewProvider {
    static var previews: some View {
        QuestView()
    }
}
