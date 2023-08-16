//
//  CartViewModel.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 16.08.2023.
//

import Foundation

class CartViewModel: ObservableObject {
    
   @Published var positions = [Position]()
    
    func addPosition(_ position: Position) {
        self.positions.append(position)
    }
    
    
}
