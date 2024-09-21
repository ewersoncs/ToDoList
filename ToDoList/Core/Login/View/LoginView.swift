//
//  LoginView.swift
//  ToDoList
//
//  Created by Ewerson Castelo on 04/09/24.
//

import SwiftUI

// MARK: - PAREI EM 33:47 Youtube

struct LoginView: View {
    
    // MARK: - PROPERTIES
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                // MARK: - HEADER
                HeaderView()
                
                // MARK: - LOGIN FORM
                Form{
                    TextField("Endereço de Email", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    SecureField("Senha de Acesso", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // TODO
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            
                            Text("Acessar")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                }
                
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
