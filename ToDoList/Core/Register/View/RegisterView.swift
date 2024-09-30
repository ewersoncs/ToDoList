//
//  RegisterView.swift
//  ToDoList
//
//  Created by Ewerson Castelo on 04/09/24.
//

import SwiftUI

// MARK: - PAREI EM 49:34 Youtube

struct RegisterView: View {
    
    // MARK: - PROPERTIES
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            // MARK: - HEADER
            HeaderView(title: "Criar Conta", subtitle: "Controle suas rotinas", angle: -15, backgroundColor: .orange)
            
            // MARK: - LOGIN FORM
            Form{
                TextField("Nome Completo", text: $fullName)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Endereço de Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                SecureField("Senha de Acesso", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                CustomButtonView(title: "Cadastrar Conta", backgroundColor: .blue, action: {
                    // Action
                })
            }
            .offset(y: -50)
            
            Spacer()
        }/// VSTACK
    }/// BODY
}

#Preview {
    RegisterView()
}


