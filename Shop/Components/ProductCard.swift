//
//  ProductCard.swift
//  Shop
//
//  Created by Dheepthi Reddy Vangeti on 6/26/25.
//

import SwiftUI

struct ProductCard: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    Text("$\(product.price)")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 5)
            
            Button {
//                print("Added to cart!")
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .background(.thinMaterial)
                    .cornerRadius(50)
                    .padding(10)
            }

        }
    }
}

#Preview {
    ProductCard(product: Product(name: "White sweater", image: "sweater1", price: 19))
        .environmentObject(CartManager())
}
