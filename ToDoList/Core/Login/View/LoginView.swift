//
//  LoginView.swift
//  ToDoList
//
//  Created by Ewerson Castelo on 04/09/24.
//

import SwiftUI

struct LoginView: View {
    
    // MARK: - PROPERTIES
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                // MARK: - HEADER
                HeaderView(title: "Lista de Tarefas", subtitle: "Não Esquecer", angle: 15, backgroundColor: .pink)
                
                // MARK: - LOGIN FORM
                Form{
                    TextField("Endereço de Email", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Senha de Acesso", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    CustomButtonView(title: "Acessar", backgroundColor: .blue, action: {
                        // Action
                    })
                }
                .offset(y: -50)
                
                // MARK: - CREATE ACCOUNT
                VStack {
                    Text("Novo por aqui ?")
      
                    NavigationLink("Criar uma conta", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
