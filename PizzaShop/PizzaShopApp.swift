//
//  PizzaShopApp.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 11.08.2023.
//

import SwiftUI
import Firebase

let screen = UIScreen.main.bounds

@main
struct PizzaShopApp: App {
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
    class AppDelegate: NSObject, UIApplicationDelegate {
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            
            FirebaseApp.configure()
            
            return true
        }
        
        
    }
    
    
}
