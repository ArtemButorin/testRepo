//
//  QuestionView.swift
//  Adaptation
//
//  Created by Артем Буторин on 30.04.2022.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TrivialManager
    
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Omega Game")
                    .lilacTitle()
                
                Spacer()
                
                Text("\(triviaManager.index + 1) из \(triviaManager.length)")
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(Color("AccentColor"))
                
                ForEach(triviaManager.answerChoises, id: \.id) { answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
            }
            
            Button {
                triviaManager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Следующий вопрос", background: triviaManager.answerSelected ? Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.237))
            }
            .disabled(!triviaManager.answerSelected)
            
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Back"))
        .navigationBarHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(TrivialManager())
    }
}
