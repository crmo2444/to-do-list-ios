//
//  ContentView.swift
//  ToDoList
//
//  Created by Claire Morgan-Sanders on 12/12/23.
//
import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        VStack {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                ToDoListItemsView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    MainView()
}
