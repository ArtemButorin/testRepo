//
//  Extansions.swift
//  Adaptation
//
//  Created by Артем Буторин on 30.04.2022.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
