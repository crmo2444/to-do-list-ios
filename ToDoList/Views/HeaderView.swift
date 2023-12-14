//
//  HeaderView.swift
//  ToDoList
//
//  Created by Claire Morgan-Sanders on 12/12/23.
//

import SwiftUI

struct Hexagon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        let x = rect.midX
        let y = rect.midY
        let side = min(width, height)
        let a = side / 1.5
        let b = side * sqrt(2.8) / 2.0
        path.move(to: CGPoint(x: x, y: y - side))
        path.addLine(to: CGPoint(x: x + a, y: y - b))
        path.addLine(to: CGPoint(x: x + a, y: y + b))
        path.addLine(to: CGPoint(x: x, y: y + side))
        path.addLine(to: CGPoint(x: x - a, y: y + b))
        path.addLine(to: CGPoint(x: x - a, y: y - b))
        path.closeSubpath()
        return path
    }
}

struct HeaderView: View {
    var body: some View {
        ZStack {
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .rotationEffect(Angle(degrees: 15))
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(.yellow)
                    .rotationEffect(Angle(degrees: -15))
                Hexagon()
                    .fill(Color.green)
                    .offset(x: 0, y: -145)
            }

            
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                Text("Get Things Done")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
            .padding(.top, 70)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -95)
    }
}

#Preview {
    HeaderView()
}
