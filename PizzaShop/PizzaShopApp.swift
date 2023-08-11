//
//  PizzaShopApp.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 11.08.2023.
//

import SwiftUI

let screen = UIScreen.main.bounds

@main
struct PizzaShopApp: App {
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
}
