//
//  LoginSinuoForm.swift
//  crmShug
//
//  Created by Alex Babych on 11.01.2021.
//

import SwiftUI

struct LoginSingupForm: View {
    var body: some View {
        Home()
            .edgesIgnoringSafeArea(.all)
            .statusBar(hidden: true)
    }
}

struct Home : View {
    
    @State var singUp = false
    
    var body: some View {
        ZStack {
            ZStack{
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
                    
                    Color("Color")
                        .clipShape(CShape())
                    
                    Path{path in
                        path.addArc(center: CGPoint(x: UIScreen.main.bounds.width - 120, y: UIScreen.main.bounds.height - 50), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
                        
                    }
                    .fill(Color.white)
                    
                    Button(action: {
                        withAnimation(.easeIn){
                            self.singUp = false
                        }
                    }, label: {
                        Image(systemName: singUp ? "xmark" : "person.fill")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color("Color"))
                    })
                    .offset(x: -110, y: -50)
                    
                    Button(action: {
                        withAnimation(.easeOut){
                            self.singUp = true
                        }
                    }, label: {
                        Image(systemName: singUp ? "person.badge.plus.fill" : "zmark")
                            .font(.system(size: singUp ? 26 : 25, weight: .bold))
                            .foregroundColor(Color("Color"))
                    })
                    .offset(x: -30, y: -40)
                }
                
                VStack(alignment: .leading, spacing: 25) {
                    
                }
            }
            
            .offset(y: singUp ? -UIScreen.main.bounds.height + (UIScreen.main.bounds.height < 750 ? 100 : 130) : 0)
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}


// custom shape

struct CShape : Shape {
    
    func path(in rect: CGRect) -> Path {
        return Path{path in
            path.move(to: CGPoint(x: rect.width, y: rect.height - 50))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.height - 50))
            
            path.addArc(center: CGPoint(x: rect.width - 40, y: rect.height - 50), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: false)
        }
    }
}



struct LoginSinuoForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginSingupForm()
    }
}
