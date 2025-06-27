//
//  Product.swift
//  Shop
//
//  Created by Dheepthi Reddy Vangeti on 6/26/25.
//

import Foundation

// product model
struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

// adding dummy data
var products = [Product(name: "White sweater", image: "sweater1", price: 30),
                Product(name: "Off white sweater", image: "sweater2", price: 31),
                Product(name: "Sweater full of color", image: "sweater3", price: 32),
                Product(name: "Forest green sweater", image: "sweater4", price: 33),
                Product(name: "Kashmiri sweater", image: "sweater5", price: 34),
                Product(name: "Dark gray sweater", image: "sweater6", price: 35),
                Product(name: "Green sweater", image: "sweater7", price: 36),
                Product(name: "Khaki sweater", image: "sweater8", price: 37)]
    
