//
//  RegisterView.swift
//  ToDoList
//
//  Created by Claire Morgan-Sanders on 12/12/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
            VStack {
                HeaderView(title: "Register", angleRight: 15,
                           angleLeft: -15, backgroundLeft: .yellow,
                           backgroundMiddle: .orange, backgroundRight: .red)
                Spacer()
                
                Form {
                    TextField("Name", text: $viewModel.name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.pass)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Confirm Password", text: $viewModel.confirmPass)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(buttonText: "Create Account", backgroundColor: .green,
                             action: {
                        viewModel.register()
                    })
                }
            }
    }
}

#Preview {
    RegisterView()
}

