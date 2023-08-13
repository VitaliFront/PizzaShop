//
//  ProductDetailView.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 12.08.2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    
    var viewModel: ProductDetailViewModel
    @State var size = ""
    
    var body: some View {
        
        
        VStack(alignment: .leading){
            
            Image("pizzaPH")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 260)
            
            HStack{
                Text("\(viewModel.product.title)")
                    .font(.title2.bold())
                Spacer()
                Text("\(viewModel.product.price) ₽")
                    .font(.title2)
            }.padding(.horizontal)
            Text("\(viewModel.product.descript)")
                .padding(.horizontal)
                .padding(.vertical, 4)
            
            Spacer()
            
            Picker("Размер Пиццы", selection: $size) {
                ForEach(viewModel.sizes) { item in
                    Text(item)
                }
            }
        }
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(viewModel: ProductDetailViewModel(product: Product(id: "1",
                                                                               title: "Маргарита",
                                                                               imageUrl: "нот",
                                                                               price: 450,
                                                                               descript: "Самая бомжатская пицца")))
    }
}
