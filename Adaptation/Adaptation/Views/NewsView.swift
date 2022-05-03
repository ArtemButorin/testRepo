//
//  NewsView.swift
//  Adaptation
//
//  Created by Артем Буторин on 03.05.2022.
//

import SwiftUI

struct NewsView: View {
    @StateObject var data = NewsAPI()
    @State private var opac = 0.0
    
    var body: some View {
        NavigationView {
            VStack {
                ListView()
                    .opacity(opac)
                    
            }
            .background(Color("Back"))
            .navigationBarHidden(true)
            .environmentObject(data)
            .onAppear {
                data.getData()
                withAnimation(.easeIn(duration: 2)) {
                    opac = 1.0
                }
            }
        }
        
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
