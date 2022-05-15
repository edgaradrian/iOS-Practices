//
//  Path_CGPathToPath.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 15/05/22.
//

import SwiftUI

struct Path_CGPathToPath: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Path", subtitulo: "Using UIKit CGPath", description: "El objecto Path de SwiftUI tiene un inicializador que acepta Core Graphics Path.")
            
            RoundedCorners(cornerRadius: 20, corners: [.topRight, .bottomRight])
                .fill(Color.blue)
                .frame(height: 80)
                .padding([.trailing, .top], 50)
            
            RoundedCorners(cornerRadius: 40, corners: [.topRight, .bottomLeft])
                .fill(Color.blue)
                .padding(.horizontal, 100)
                .padding(.top, 50)
            
            Spacer()
            
            VStack {
                HStack {
                    Image(systemName: "info.circle")
                        .padding(.leading)
                    Text("Más información")
                    Spacer()
                }
                .padding(.top)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: 75)
            .foregroundColor(.white)
            .background(
                RoundedCorners(cornerRadius: 30, corners: [.topLeft])
                    .fill(Color.blue))
            .padding(.leading, 50)
            
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
    }
}

struct Path_CGPathToPath_Previews: PreviewProvider {
    static var previews: some View {
        Path_CGPathToPath()
    }
}
