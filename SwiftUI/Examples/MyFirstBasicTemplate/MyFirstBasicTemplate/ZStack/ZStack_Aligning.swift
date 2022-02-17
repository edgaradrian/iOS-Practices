//
//  ZStack_Aligning.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 16/02/22.
//

import SwiftUI

struct ZStack_Aligning: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "ZStack", subtitulo: "Aligning", description: "ZStack permite alinear todas las vistas dentro de sí misma.")
            
            ZStack(alignment: .topLeading) {
                
                Image("Lambeau_Field")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Rectangle()
                    .fill(Color.white.opacity(0.6))
                    .frame(maxWidth: .infinity, maxHeight: 60)
                
                Text("Lambeau Field")
                    .font(.title)
                    .padding()
            }
            
            ZStack(alignment: .bottomTrailing) {
                Image("Lambeau_Field")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Rectangle()
                    .fill(Color.white.opacity(0.6))
                    .frame(maxWidth: .infinity, maxHeight: 60)
                
                Text("Lambeau Field")
                    .font(.title)
                    .padding()
                
            }
            
        }
        .font(.title)
    }
}

struct ZStack_Aligning_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_Aligning()
    }
}
