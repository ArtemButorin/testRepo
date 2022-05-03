//
//  NewsArticle.swift
//  Adaptation
//
//  Created by Артем Буторин on 03.05.2022.
//

import SwiftUI
import CachedAsyncImage

struct NewsArticle: View {
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(author ?? "Автор неизвестен")
                .foregroundColor(.gray)
                .italic()
                .padding(.horizontal, 8)
                .padding(.top, 8)
            
            HStack(alignment: .center) {
                CachedAsyncImage(url: URL(string: urlToImage ?? ""), transaction: Transaction(animation: .easeInOut)) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .transition(.opacity)
                            .padding(.horizontal, 8)
                            .shadow(radius: 10)
                    } else {
                        HStack {
                            Image("Default")
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .transition(.opacity)
                                .padding(.horizontal, 8)
                                .shadow(radius: 10)
                        }
                    }
                }
            }
            Text(title ?? "Нет названия")
                .font(.headline)
                .padding(8)
                .foregroundColor(.accentColor)
            
            Text(description ?? "Нет описания")
                .lineLimit(6)
                .font(.body)
                .padding(8)
        }
  //      .edgesIgnoringSafeArea(.all)
//        .background(Color("Back"))
    }
}

struct NewsArticle_Previews: PreviewProvider {
    static var previews: some View {
        NewsArticle(author: "Александр Митрофанов", title: "Российские клубы отстранены от еврокубков", description: "Российские клубы отстранены от еврокубковых турниров", url: "https://www.sports.ru/football/1108676784-rossijskie-kluby-otstraneny-ot-evrokubkov-v-sezone-2022-23.html", urlToImage: "https://www.sports.ru/dynamic_images/news/110/867/678/4/share/1f5ce9.jpg")
  //          .background(Color("Back"))
    }
}
