//
//  ContentView.swift
//  ToDoList
//
//  Created by Claire Morgan-Sanders on 12/12/23.
//
import SwiftUI

struct MainView: View {
    
    @State var email = ""
    @State var pass = ""
    
    var body: some View {
        VStack {
            LoginView()
            //Login form
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Password", text: $pass)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                        
                        Text("Log In")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 23))
                    }
                }
                .padding(.bottom, 10)
            }
            //Create Account
            VStack {
                Text("New User?")
                Button("Create an Account") {
                    
                }
            }
            Spacer()
        }
    }
}

#Preview {
    MainView()
}
