//
//  ProductRow.swift
//  Shop
//
//  Created by Dheepthi Reddy Vangeti on 7/28/25.
//

import SwiftUI

struct ProductRow: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10){
                Text(product.name)
                    .bold()
                Text("$\(product.price)")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

#Preview {
    ProductRow(product: Product(name: "White sweater", image: "sweater1", price: 19))
        .environmentObject(CartManager())
}
