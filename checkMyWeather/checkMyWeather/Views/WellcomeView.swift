//
//  WellcomeView.swift
//  checkMyWeather
//
//  Created by Артем Буторин on 28.04.2022.
//

import SwiftUI
import CoreLocationUI

struct WellcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Добро пожаловать в Погодку")
                    .bold().font(.title)
                
                Text("Пожалуйста, разрешите доступ к Вашей геолокации, чтобы узнать погоду в Вашем районе")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WellcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WellcomeView()
    }
}
