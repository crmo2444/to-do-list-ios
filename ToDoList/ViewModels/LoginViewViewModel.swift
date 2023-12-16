//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Claire Morgan-Sanders on 12/12/23.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var pass = ""
    @Published var errorMessage = ""
    
    init () {}
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: pass)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !pass.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "One or more empty fields."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email."
            return false
        }
        
        return true
    }
}
