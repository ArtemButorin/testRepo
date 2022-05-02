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
        TabView {
            StoryView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Квест")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Карта")
                }
            NewsView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Новости")
                }
            ChatView()
                .tabItem {
                    Image(systemName: "message")
                    Text("Чат-бот")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
