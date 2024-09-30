//
//  HeaderView.swift
//  ToDoList
//
//  Created by Ewerson Castelo on 08/09/24.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    let title: String
    let subtitle: String
    let angle: Double
    let backgroundColor: Color
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
            
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .bold()
                    .foregroundColor(.white)
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, backgroundColor: .blue)
}
