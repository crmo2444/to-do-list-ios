//
//  TLButtonView.swift
//  ToDoList
//
//  Created by Claire Morgan-Sanders on 12/14/23.
//

import SwiftUI

struct TLButton: View {
    let buttonText: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                
                Text(buttonText)
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 23))
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(buttonText: "Text", backgroundColor: .blue,
             action: {
        //attempt action
    })
}
