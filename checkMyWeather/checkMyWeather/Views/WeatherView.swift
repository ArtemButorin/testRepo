//
//  WeatherView.swift
//  checkMyWeather
//
//  Created by Артем Буторин on 29.04.2022.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name)
                        .bold().font(.title)
                    
                    Text("Сегодня \(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                VStack {
                    HStack {
                        VStack(spacing: 20) {
                            Image(systemName: "sun.max")
                                .font(.system(size: 40))
                            
                            Text(weather.weather[0].main)
                        }
                        .frame(width: 110, alignment: .leading)
                        
                        Spacer()
                        
                        Text((weather.main.feels_like-273).roundDouble() + "°")
                            .font(.system(size: 90))
                            .fontWeight(.bold)
                            .padding()
                    }
                    
                    Spacer()
                        .frame(height: 50)
                    
                    AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2017/01/23/16/35/home-2003068_1280.png")) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350)
                        
                    } placeholder: {
                        ProgressView()
                    }
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack {
                Spacer()
                
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Погода сейчас")
                            .bold().padding(.bottom)
                        
                        HStack {
                            WeatherRow(logo: "thermometer", name: "Температура мин.", value: ((weather.main.temp_min-273).roundDouble() + "°"))
                            Spacer()
                            WeatherRow(logo: "thermometer", name: "Температура макс.", value: ((weather.main.temp_max-273).roundDouble() + "°"))
                        }
                        HStack {
                            WeatherRow(logo: "wind", name: "Скорость ветра", value: (weather.wind.speed.roundDouble() + "м/с"))
                            Spacer()
                            WeatherRow(logo: "humidity", name: "Влажность воздуха", value: (weather.main.humidity.roundDouble() + "%"))
                            
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.bottom, 20)
                .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
                .background(.white)
                .cornerRadius(20, corners: [.topLeft, .topRight])
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(.dark)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
