//
//  HeaderView.swift
//  ToDoList
//
//  Created by Ewerson Castelo on 08/09/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.pink)
                .rotationEffect(Angle(degrees: 15))
            
            VStack{
                Text("Lista de Tarefas")
                    .font(.system(size: 50))
                    .bold()
                    .foregroundColor(.white)
                
                Text("Não Esquecer")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
