//
//  RegisterView.swift
//  ToDoList
//
//  Created by Claire Morgan-Sanders on 12/12/23.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var pass = ""
    @State var confirmPass = ""
    
    var body: some View {
            VStack {
                HeaderView(title: "Register", angleRight: 15,
                           angleLeft: -15, backgroundLeft: .yellow,
                           backgroundMiddle: .orange, backgroundRight: .red)
                Spacer()
                
                Form {
                    TextField("Name", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $pass)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Confirm Password", text: $confirmPass)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(buttonText: "Create Account", backgroundColor: .green,
                             action: {
                        //attempt account registration
                    })
                }
            }
    }
}

#Preview {
    RegisterView()
}

