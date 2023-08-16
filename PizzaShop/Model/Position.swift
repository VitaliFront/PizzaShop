//
//  Position.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 16.08.2023.
//

import Foundation

struct Position: Identifiable {
    
    var id: String
    var product: Product
    var count: Int
    
    var cost: Int {
        product.price * self.count
    }
    
}
