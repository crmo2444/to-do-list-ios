//
//  LoginView.swift
//  ToDoList
//
//  Created by Claire Morgan-Sanders on 12/12/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
                    VStack {
                        HeaderView(title: "Taskify", angleRight: 15,
                                   angleLeft: -15, backgroundLeft: .yellow,
                                   backgroundMiddle: .green, backgroundRight: .blue)

                        Form {
                            if !viewModel.errorMessage.isEmpty {
                                Text(viewModel.errorMessage)
                                    .foregroundColor(Color.red)
                            }

                            TextField("Email Address", text: $viewModel.email)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .autocapitalization(.none)
                                .autocorrectionDisabled()

                            SecureField("Password", text: $viewModel.pass)
                                .textFieldStyle(RoundedBorderTextFieldStyle())

                            TLButton(buttonText: "Log In", backgroundColor: .blue, action: {

                            })
                        }
                        .padding(.bottom, 10)

                        Spacer()

                        // Create Account
                        VStack {
                            Text("New User?")
                            NavigationLink("Create an Account", destination: RegisterView())
                        }
                    }
                    .navigationTitle("") // Empty title to avoid large title behavior
                    .navigationBarHidden(true) // Hide the navigation bar when inside the form
                }.navigationViewStyle(.stack)
            }
}

#Preview {
    LoginView()
}
