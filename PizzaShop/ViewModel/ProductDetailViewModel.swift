//
//  ProductDetailViewModel.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 13.08.2023.
//

import Foundation


class ProductDetailViewModel: ObservableObject {
    
    @Published var product: Product
    @Published var sizes = ["Маленькая", "Средняя","Большая"]
    
    init(product: Product) {
        self.product = product
    }
    
    
    
}
