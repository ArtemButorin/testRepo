//
//  Constants.swift
//  CocoaByArtem
//
//  Created by Артем Буторин on 06.04.2022.
//

import UIKit

enum Constants {
    
    enum Fonts {
        static var ui16semi: UIFont {
            UIFont.systemFont(ofSize: 16, weight: .semibold)
        }
        static var ui14reg: UIFont {
            UIFont.systemFont(ofSize: 14, weight: .regular)
        }
    }

    enum Headers {
        static let headerNames: [String] = [
            "Belgium",
            "Austria",
            "France",
            "Germany",
            "Greece"
        ]
    }
    
    enum Dates {
        static let dateNames: [String] = [
            "05.02.03",
            "04.02.03",
            "03.02.03",
            "02.02.03",
            "01.02.03"
        ]
    }
    
    enum Infos {
        static let infoNames: [String] = [
            "He'll want to use your yacht, and I don't want this thing smelling like fish.",
            "He'll want to use your yacht, and I don't want this thing smelling like fish.",
            "He'll want to use your yacht, and I don't want this thing smelling like fish.",
            "He'll want to use your yacht, and I don't want this thing smelling like fish.",
            "He'll want to use your yacht, and I don't want this thing smelling like fish."
        ]
    }
    
    enum Images {
        static let imageNames: [UIImage] = [
            UIImage(imageLiteralResourceName: "block"),
            UIImage(imageLiteralResourceName: "block"),
            UIImage(imageLiteralResourceName: "block"),
            UIImage(imageLiteralResourceName: "block"),
            UIImage(imageLiteralResourceName: "block")
        ]
    }
}
