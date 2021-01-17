//
//  LoginFormView.swift
//  crmShug
//
//  Created by alex-babich on 23.12.2020.
//

import SwiftUI

struct LoginFormView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color.red
                .colorInvert()
            
            VStack(alignment: .center, spacing: 20) {
                
                LoginFormInputField(textInput: "Email or username", placeholder: username)
                
                LoginFormInputField(textInput: "Password", placeholder: password)
                
                Button(action: {
                    print("User \(self.username) is login with pass \(self.password)")
                }, label: {
                    Text("Login")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 10)
                        .background(Color.yellow)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.orange, lineWidth: 3))
                        .shadow(color: .black, radius: 15.0, x: 10.0, y: 10.0)
                })

            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginFormView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormView()
    }
}
