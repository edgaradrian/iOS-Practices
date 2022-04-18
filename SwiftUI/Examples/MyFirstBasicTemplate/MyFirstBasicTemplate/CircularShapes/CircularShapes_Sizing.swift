//
//  CircularShapes_Sizing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/04/22.
//

import SwiftUI

struct CircularShapes_Sizing: View {
    var body: some View {
        VStack(spacing: 10) {
            
            Text("Usando relleno")
            
            ZStack {
                Circle()
                    .fill(Color.blue)
                    .padding()
                Circle()
                    .fill(Color.white)
                    .padding(40)
                Circle()
                    .fill(Color.blue)
                    .padding(60)
                Circle()
                    .fill(Color.white)
                    .padding(80)
            }
            .frame(width: 200, height: 200)
            
            Text("Usando marcos")
            
            ZStack(alignment: .bottom) {
                Circle()
                    .fill(Color.secondary)
                    .frame(height: 250)
                
                Circle()
                    .fill(Color.secondary)
                    .frame(height: 200)
                
                Circle()
                    .fill(Color.secondary)
                    .frame(height: 150)
                
                Circle()
                    .fill(Color.secondary)
                    .frame(height: 100)
                
            }
            
        }
        .font(.title)
    }
}

struct CircularShapes_Sizing_Previews: PreviewProvider {
    static var previews: some View {
        CircularShapes_Sizing()
    }
}
