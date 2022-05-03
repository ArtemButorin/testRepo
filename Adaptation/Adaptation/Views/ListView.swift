//
//  NewsView.swift
//  Adaptation
//
//  Created by Артем Буторин on 02.05.2022.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var data: NewsAPI
    @Environment(\.openURL) var openURL
    private var textWidth = 300.0
    
    var body: some View {
        VStack {
            Text("Новости")
                .lilacTitle()
            List {
                ForEach(data.news) { news in
                    NewsArticle(
                        author: news.author,
                        title: news.title,
                        description: news.description,
                        url: news.url,
                        urlToImage: news.urlToImage)
                    .onTapGesture {
                        openURL(URL(string: news.url ?? "") ?? URL(fileURLWithPath: ""))
                    }
                }
            }
            .listStyle(.plain)
            .edgesIgnoringSafeArea(.all)
            .refreshable {
                data.getData()
        }
        }
        .background(Color("Back"))
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(NewsAPI())
    }
}
