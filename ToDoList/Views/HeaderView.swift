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
    let title: String
    let angleRight: Double
    let angleLeft: Double
    let backgroundLeft: Color
    let backgroundMiddle: Color
    let backgroundRight: Color
    
    var body: some View {
        ZStack {
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(backgroundRight)
                    .rotationEffect(Angle(degrees: angleRight))
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(backgroundLeft)
                    .rotationEffect(Angle(degrees: angleLeft))
                Hexagon()
                    .fill(backgroundMiddle)
                    .offset(x: 0, y: -145)
            }

            
            
            VStack {
                Text(title)
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                    .bold()
            }
            .padding(.top, 70)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -95)
    }
}

#Preview {
    HeaderView(title: "Title", angleRight: 15,
               angleLeft: -15, backgroundLeft: .yellow,
               backgroundMiddle: .purple, backgroundRight: .blue)
}
