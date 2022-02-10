//
//  VStack_Spacing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/02/22.
//

import SwiftUI

struct VStack_Spacing: View {
    var body: some View {
        VStack(spacing: 80) {
            
            Text("VStack")
                .font(.largeTitle)
            
            Text("Spacing")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("El inicializador VStack permite poner espsacios entre las vistas dentro del VStack")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .font(.title)
                .foregroundColor(.white)
            
            Image(systemName: "arrow.up.and.down.circle.fill")
                .font(.largeTitle)
            
            Text("El espacio entre las vistas de aquí es de 80")
                .font(.title)
            
        }
    }
}

struct VStack_Spacing_Previews: PreviewProvider {
    static var previews: some View {
        VStack_Spacing()
    }
}
