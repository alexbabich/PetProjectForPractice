//
//  ContentView.swift
//  crmShug
//
//  Created by alex-babich on 11.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLogged = false

    var body: some View {
        if isLogged {
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Hello")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("Let's upgrade your skill")
                    }
                    .foregroundColor(.black)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        
                        Image(systemName: "person.circle")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 50, height: 50)
                    }
                }
                .padding()
                
                Spacer(minLength: 0)
            }
            .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
        } else {
            LoginFormView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
