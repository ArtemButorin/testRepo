//
//  News.swift
//  Adaptation
//
//  Created by Артем Буторин on 02.05.2022.
//

import Foundation

struct News: Codable {
    let status: String?
    let totalResults: Int?
    let articles: [Articles]
}

struct Articles: Codable, Identifiable {
    var id: UUID {
        UUID()
    }
    let title: String
    let description: String?
    let url: String?
    let author: String?
    let urlToImage: String?
    let publishedAt: String?
    let source: Source
}

struct Source: Codable, Identifiable {
    let id: String?
    let name: String?
}

//@MainActor 
class NewsAPI: ObservableObject {
    @Published var news: [Articles] = []
    
    func getData() {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=ru&apiKey=201e5f4f01b444b4932a2882ff177ebb") else { return }
        let task = URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard let data = data, error == nil else {
                print("что-то пошло не так")
                return
            }
            var result: News?
            do {
                result = try JSONDecoder().decode(News.self, from: data)
            }
            catch {
                print("FAILED to convert")
                print(error.localizedDescription)
            }
            guard let json = result else {
                return
            }
            print(json.totalResults ?? "x3?")
            DispatchQueue.main.async {
                print("SUCCESS")
                self.news = json.articles
            }
        })
        task.resume()
    }
}

//func getData() {
//    guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=ru&apiKey=201e5f4f01b444b4932a2882ff177ebb") else { return }
//
//    URLSession.shared.dataTask(with: url) { data, response, error in
//        guard let data = data else {
//            let tempError = error!.localizedDescription
//            DispatchQueue.main.async {
//                self.news = [News(status: "error", totalResults: 0, articles: [])]
//            }
//            return
//        }
//        var result: News
//
//        let newsData = try! JSONDecoder().decode(News.self, from: data)
//
//        DispatchQueue.main.async {
//            print("SUCCESS")
//            self.news = newsData
//        }
//    }.resume()
//}
