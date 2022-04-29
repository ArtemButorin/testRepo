//
//  ModelData.swift
//  checkMyWeather
//
//  Created by Артем Буторин on 29.04.2022.
//

import Foundation

var previewWeather: ResponseBody = load("weatherData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Не загружается \(filename) в главном бандле")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Не загружается \(filename):\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Не удается распарсить \(filename) как \(T.self):\n\(error)")
    }
}
