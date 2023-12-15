//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Claire Morgan-Sanders on 12/12/23.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var pass = ""
    
    init () {}
}
