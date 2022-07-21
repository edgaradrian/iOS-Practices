//
//  NavigationViewStyle_DoubleColumn.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/07/22.
//

import SwiftUI

struct NavigationViewStyle_DoubleColumn: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                Image(systemName: "globe")
                    .font(.largeTitle)
                
                Text("Estilo de doble Columna")
                    .font(.title)
                    .foregroundColor(.gray)
                
                NavigationLink(destination: ProfileDetail()) {
                    Text("Ir al detalle")
                }
                
                Spacer()
            }
            .padding(.top, 25)
            .navigationTitle("Estilo de Navegación")
            .background(
                Color.clear
            )
            
            ProfileDetail()
            
        }
        .navigationViewStyle(.columns)
    }
}

struct NavigationViewStyle_DoubleColumn_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewStyle_DoubleColumn()
            .previewInterfaceOrientation(.portrait)
    }
}
