//
//  HStack_Spacing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/02/22.
//

import SwiftUI

struct HStack_Spacing: View {
    var body: some View {
        VStack(spacing: 40) {
            
            Text("HStack")
                .font(.largeTitle)
            
            Text("Spacing")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("El inicializador de HStack permite poner espacio entre todas las vistas dentro de HStack")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
                .font(.title)
                .foregroundColor(.black)
            
            Text("Default Spacing")
                .font(.title)
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .font(.largeTitle)
            
            Divider()
            
            Text("Spacing: 100")
                .font(.title)
            HStack(spacing: 100) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .font(.largeTitle)
            
            
        }
    }
}

struct HStack_Spacing_Previews: PreviewProvider {
    static var previews: some View {
        HStack_Spacing()
    }
}
