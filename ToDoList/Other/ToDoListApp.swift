//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Claire Morgan-Sanders on 12/12/23.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
