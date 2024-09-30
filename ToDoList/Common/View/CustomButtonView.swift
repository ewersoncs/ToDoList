//
//  ButtonView.swift
//  ToDoList
//
//  Created by Ewerson Castelo on 22/09/24.
//

import SwiftUI

struct CustomButtonView: View {
    // MARK: - PROPERTIES
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // TODO
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    CustomButtonView(title: "Title", backgroundColor: .red){
        // Action
    }
    .frame(width: 270, height: 70)
}
