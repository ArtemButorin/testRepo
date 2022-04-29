//
//  Product.swift
//  A-store
//
//  Created by Артем Буторин on 28.04.2022.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Хорошая футболка", image: "shirt1", price: 1200),
                   Product(name: "Нормальная футболка", image: "shirt2", price: 1100),
                   Product(name: "Средняя футболка", image: "shirt3", price: 1490),
                   Product(name: "Отличная футболка", image: "shirt4", price: 2100),
                   Product(name: "Топовая футболка", image: "shirt5", price: 1900),
                   Product(name: "Недорогая футболка", image: "shirt6", price: 990),
]
