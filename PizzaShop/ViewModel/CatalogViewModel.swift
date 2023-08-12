//
//  CatalogViewModel.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 12.08.2023.
//

import Foundation

class CatalogViewModel: ObservableObject {
    
    static let shared = CatalogViewModel()
    
    var popularProducts = [
        Product(id: "1",
                                     title: "Маргарита",
                                     imageUrl: "нот",
                                     price: 450,
                                     descript: "Самая бомжатская пицца"),
        Product(id: "2",
                                     title: "Маргарита Гурмэ",
                                     imageUrl: "нот",
                                     price: 350,
                                     descript: "Самая бомжатская пицца"),
        Product(id: "3",
                                     title: "Пепперони",
                                     imageUrl: "нот",
                                     price: 550,
                                     descript: "Самая бомжатская пицца"),
        Product(id: "4",
                                     title: "Гавайская",
                                     imageUrl: "нот",
                                     price: 600,
                                     descript: "Самая бомжатская пицца"),
        Product(id: "5",
                                     title: "Диабло",
                                     imageUrl: "нот",
                                     price: 590,
                                     descript: "Самая бомжатская пицца")
    ]
    
    var pizzas = [
        Product(id: "1",
                                     title: "Маргарита",
                                     imageUrl: "нот",
                                     price: 450,
                                     descript: "Самая бомжатская пицца"),
        Product(id: "2",
                                     title: "Маргарита Гурмэ",
                                     imageUrl: "нот",
                                     price: 350,
                                     descript: "Самая бомжатская пицца"),
        Product(id: "3",
                                     title: "Пепперони",
                                     imageUrl: "нот",
                                     price: 550,
                                     descript: "Самая бомжатская пицца"),
        Product(id: "4",
                                     title: "Гавайская",
                                     imageUrl: "нот",
                                     price: 600,
                                     descript: "Самая бомжатская пицца"),
        Product(id: "5",
                                     title: "Диабло",
                                     imageUrl: "нот",
                                     price: 590,
                                     descript: "Самая бомжатская пицца")
    ]
    
    
}
