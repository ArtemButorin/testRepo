//
//  StoryView.swift
//  Adaptation
//
//  Created by Артем Буторин on 01.05.2022.
//

import SwiftUI

struct StoryView: View {
    var buttons: [QuestionButton] = [
        QuestionButton(text: "Первый", number: "#1"),
        QuestionButton(text: "Второй", number: "#2"),
        QuestionButton(text: "Третий", number: "#3"),
        QuestionButton(text: "Четвертый", number: "#4"),
        QuestionButton(text: "Пятый", number: "#5"),
        QuestionButton(text: "Шестой", number: "#6"),
        QuestionButton(text: "Седьмой", number: "#7")
    ]
    
    @StateObject var triviaManager = TrivialManager()
    
    var body: some View {
        let maxTokens: Int = buttons.count * 10
        NavigationView {
            VStack {
                Text("Квест")
                    .lilacTitle()
                HStack {
                    Text("Заработано токенов: 0 из \(maxTokens)")
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color("AccentColor"))
                        .opacity(0.8)
                }
                ScrollView {
                    VStack {
                        Group {
                            HStack {
                                NavigationLink(destination: QuestView().environmentObject(triviaManager), label: {
                                    buttons[0]
                                })
                            }
                            HStack {
                                NavigationLink(destination: QuestView().environmentObject(triviaManager), label: {
                                    buttons[1]
                                })
                                NavigationLink(destination: QuestView().environmentObject(triviaManager), label: {
                                    buttons[2]
                                })
                            }
                            HStack {
                                NavigationLink(destination: QuestView().environmentObject(triviaManager), label: {
                                    buttons[3]
                                })
                            }
                            HStack {
                                NavigationLink(destination: QuestView().environmentObject(triviaManager), label: {
                                    buttons[4]
                                })
                                NavigationLink(destination: QuestView().environmentObject(triviaManager), label: {
                                    buttons[5]
                                })
                            }
                            HStack {
                                NavigationLink(destination: QuestView().environmentObject(triviaManager), label: {
                                    buttons[6]
                                })
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Back"))
            .navigationBarHidden(true)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
