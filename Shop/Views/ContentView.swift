//
//  ContentView.swift
//  Shop
//
//  Created by Dheepthi Reddy Vangeti on 6/26/25.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(products, id: \.id) { product in
                        ProductCard(product: product)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Shop"))
        }
    }
}

#Preview {
    ContentView()
}
