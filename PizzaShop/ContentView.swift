//
//  ContentView.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 11.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("Авторизация")
                .padding()
                .padding(.horizontal, 30)
                .font(.title2.bold())
                .background(Color("whiteAlpha"))
                .cornerRadius(30)
            
            VStack {
                TextField("Введите Email", text: $email)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                SecureField("Введите Пароль", text: $password)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)
                    
                Button {
                    print("Авторизация")
                } label: {
                    Text("Войти")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [Color("yellow"), Color("orange")], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(Color("darkbrown"))
                        
                }
                Button {
                    print("Еще не с нами ?")
                } label: {
                    Text("Еще не с нами ?")
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(Color("darkbrown"))
                        
                }

            }
            .padding()
            .padding(.top, 16)
            .background(Color("whiteAlpha"))
            .cornerRadius(24)
            .padding(30)
           
            
            
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Image("bg").ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
