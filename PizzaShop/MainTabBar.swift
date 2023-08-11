//
//  MainTabBar.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 12.08.2023.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView {
           CatalogView()
                .tabItem {
                    VStack {
                        Image(systemName: "menucard")
                        Text("Каталог")
                    }
                }
            
            CartView()
                .tabItem {
                    VStack {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }
                }
            
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle")
                        Text("Профиль")
                    }
                }
        }
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
