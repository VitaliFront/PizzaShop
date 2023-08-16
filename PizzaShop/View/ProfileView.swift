//
//  ProfileView.swift
//  PizzaShop
//
//  Created by Vitali Klopau on 12.08.2023.
//

import SwiftUI

struct ProfileView: View {
    
    @State var isAvaAlertPresented = false
    @State var isQuitAlertPresented = false
    @State var isAutPresented = false
    
    var body: some View {
        
        
        
        VStack(alignment: .center, spacing: 20) {
            HStack(spacing: 16) {
                Image("user")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(8)
                    .background(Color.gray.opacity(0.2))
                    .clipShape(Circle())
                    .onTapGesture {
                        isAvaAlertPresented.toggle()
                    }
                    .confirmationDialog("Откуда взять фотку ?", isPresented: $isAvaAlertPresented) {
                        Button {
                            print("Library")
                        } label: {
                            Text("Из галереи")
                        }
                        Button {
                            print("Camera")
                        } label: {
                            Text("С камеры")
                        }
//                        Button {
//                            print("Cancel")
//                        } label: {
//                            Text("Отмена")
//                        }

                    }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Vitali Klopau")
                        .bold()
                    Text("+49 1721634822")
                }
            }
            VStack(alignment: .leading, spacing: 8) {
                Text("Адрес доставки")
                    .bold()
                Text("Россия, Московская область, г. Нижний Уренгой, ул. Юных Юнатов, д. 35, кв. 18")
            }
            // MARK: Таблица с заказами
            
            List() {
                Text("Ваши заказы будут тут")
            }.listStyle(.plain)
                .padding()
            
            Button {
                isQuitAlertPresented.toggle()
            } label: {
                Text("Выйти")
                    .padding()
                    .padding(.horizontal, 30)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    
            }.padding()
                .confirmationDialog("Действительно выйти ?", isPresented: $isQuitAlertPresented) {
                    Button {
                        isAutPresented.toggle()
                    } label: {
                        Text("Да")
                    }

                }
                .fullScreenCover(isPresented: $isAutPresented, onDismiss: nil) {
                    AuthView()
                }

            
        }
        
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
