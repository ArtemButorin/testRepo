//
//  QuestionButton.swift
//  Adaptation
//
//  Created by Артем Буторин on 01.05.2022.
//

import SwiftUI

struct QuestionButton: View {
    var text: String
    var number: String
    var background: Color = Color("AccentColor")
    var status: Bool = false
    
    var body: some View {
        VStack(spacing: -10) {
            ZStack {
                Circle()
                    .padding()
                    .foregroundColor(status ? background : .gray)
                    .frame(width: 150, height: 150)
                    .shadow(radius: 10)
                Circle()
                    .padding()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.white)
                Text(number)
                    .bold()
                    .font(.title)
            }
            Text(text)
                .bold()
                .font(.title2)
                .foregroundColor(.white)
        }
    }
}

struct QuestionButton_Previews: PreviewProvider {
    static var previews: some View {
        QuestionButton(text: "First point", number: "#1", status: false)
            .background(Color("Back"))
    }
}
