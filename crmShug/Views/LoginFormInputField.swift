//
//  LoginFormInputField.swift
//  crmShug
//
//  Created by Alex Babych on 11.01.2021.
//

import SwiftUI

struct LoginFormInputField: View {
    
    @State var textInput : String
    @State var placeholder : String
    
    var body: some View {
        TextField(placeholder, text: $textInput)
            .cornerRadius(5.0)
            .padding(.all)
            .foregroundColor(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 2)
            )
            .frame(width: getWidth())
            .shadow(color: .black, radius: 20.0, x: 5.0, y: 5.0)
    }
    
    func getWidth() -> CGFloat {
        return UIScreen.main.bounds.width / 1.5
    }
}

struct LoginFormInputField_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormInputField(textInput: "String", placeholder: "ffrfr")
    }
}
