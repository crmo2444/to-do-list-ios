//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Claire Morgan-Sanders on 12/12/23.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var pass = ""
    @Published var confirmPass = ""
    @Published var errorMessage = ""
    
    init () {}
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: pass) { [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !pass.trimmingCharacters(in: .whitespaces).isEmpty,
              !confirmPass.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
              
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        
        guard pass.count >= 6 && pass == confirmPass else {
            return false
        }
        
        return true
    }
}
