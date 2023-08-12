//
//  ProductDetailView.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 12.08.2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    
    var product: Product
    
    var body: some View {
        Text("\(product.title)!")
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Product(id: "1",
                                           title: "Маргарита",
                                           imageUrl: "нот",
                                           price: 450,
                                           descript: "Самая бомжатская пицца"))
    }
}
