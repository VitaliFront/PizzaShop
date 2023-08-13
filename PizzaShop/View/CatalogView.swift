//
//  Catalog.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 12.08.2023.
//

import SwiftUI

struct CatalogView: View {
    
    let layoutForPopular = [GridItem(.adaptive(minimum: screen.width / 2.2))]
    let layoutForPizza = [GridItem(.adaptive(minimum: screen.width / 2.4))]
    
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            Section("Популярные") {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: layoutForPopular, spacing: 16) {
                        ForEach(CatalogViewModel.shared.popularProducts, id: \.id) { item in
                            
                            NavigationLink {
                                
                                let viewModel = ProductDetailViewModel(product: item)
                                
                                ProductDetailView(viewModel: viewModel)
                            } label: {
                                ProductCell(product: item)
                                    .foregroundColor(.black)
                            }

                        }
                    }.padding()
                }
            }
                
                Section("Пицца") {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: layoutForPizza) {
                            ForEach(CatalogViewModel.shared.popularProducts, id: \.id) { item in
                                NavigationLink {
                                    let viewModel = ProductDetailViewModel(product: item)
                                    
                                    ProductDetailView(viewModel: viewModel)
                                } label: {
                                    ProductCell(product: item)
                                        .foregroundColor(.black)
                                }
                            }
                        }.padding()
                    }
                }
                
        }.navigationTitle(Text("Каталог"))
    }
    }
    
    struct Catalog_Previews: PreviewProvider {
        static var previews: some View {
            CatalogView()
        }
    }

