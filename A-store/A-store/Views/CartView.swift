//
//  CartView.swift
//  A-store
//
//  Created by Артем Буторин on 28.04.2022.
//

import SwiftUI

struct CartView: View {
@EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Text("Итого в корзине")
                    Spacer()
                    Text("\(cartManager.total).00 руб.")
                        .bold()
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            } else {
                Text("Ваша корзина пуста")
            }
        }
        .navigationTitle(Text("Моя корзина"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
