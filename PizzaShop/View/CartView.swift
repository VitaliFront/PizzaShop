//
//  CartView.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 12.08.2023.
//

import SwiftUI

struct CartView: View {
    
    var viewModel: CartViewModel
    
    var body: some View {
        Text("Корзина!")
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(viewModel: CartViewModel())
    }
}
