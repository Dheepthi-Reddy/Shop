//
//  CartView.swift
//  Shop
//
//  Created by Dheepthi Reddy Vangeti on 7/9/25.
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
                HStack{
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                
            } else {
                Text("Your Cart is empty")
            }
        }
        .navigationTitle("My Cart")
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
