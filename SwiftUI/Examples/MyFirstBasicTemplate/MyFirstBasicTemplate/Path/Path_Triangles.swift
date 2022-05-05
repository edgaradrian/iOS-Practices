//
//  Path_Triangles.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 05/05/22.
//

import SwiftUI

struct Path_Triangles: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Path", subtitulo: "Triángulos", description: "Se pueden crear figuras circulares y rectangulares. También triángulos como en el siguiente ejemplo.")
            
            GeometryReader { geometry in
                Path { path in
                    let middle = geometry.frame(in: .local).midX
                    let width: CGFloat = 200
                    
                    path.move(to: CGPoint(x: middle, y: 10))
                    path.addLine(to: CGPoint(x: middle + (width / 2), y: 170))
                    path.addLine(to: CGPoint(x: middle - (width / 2), y: 170))
                    path.closeSubpath()
                }
                .strokedPath(StrokeStyle(lineWidth: 4))
                .foregroundColor(.cyan)
            }
            
            GeometryReader { geometry in
                
                Path { path in
                    
                    let middle = geometry.frame(in: .local).midX
                    let width: CGFloat = 200
                    
                    path.move(to: CGPoint(x: middle, y: 10))
                    path.addLine(to: CGPoint(x: middle + (width / 2), y: 170))
                    path.addLine(to: CGPoint(x: middle - (width / 2), y: 170))
                    path.closeSubpath()
                    
                }
                .fill(.cyan)
                .rotationEffect(.degrees(90))
                
            }
            
            
        }
        
    }
}

struct Path_Triangles_Previews: PreviewProvider {
    static var previews: some View {
        Path_Triangles()
    }
}
