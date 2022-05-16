//
//  Rectangular_Colors.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/05/22.
//

import SwiftUI

struct Rectangular_Colors: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Formas Rectangulares", subtitulo: "Colores", description: "Las formas rectangulares pueden tener estilos aplicados a ellas,. El Color se considera un estilo que puede cambiar.")
            
            Text("Usando .fill(Color.cyan)")
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.cyan)
                .padding()
            
            Text("También se puede usar .foregroundColor(Color.yellow)")
            Rectangle()
                .foregroundColor(.yellow)
                .padding()
            
            Text("Usando .background(Color.orange)")
            RoundedRectangle(cornerRadius: .infinity)
                .background(Color.orange)
                .padding()
            
            
        }
        .font(.title)
    }
}

struct Rectangular_Colors_Previews: PreviewProvider {
    static var previews: some View {
        Rectangular_Colors()
    }
}
