//
//  Toolbar_Location.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 04/06/22.
//

import SwiftUI

struct Toolbar_Location: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView(titulo: "", subtitulo: "ToolbarItem Location", description: "Se pueden especificar la ubicación de los artículos de la barra de herramienta.")
                
                Spacer()
            }
            .navigationTitle("Toolbar")
            .font(.title)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "line.horizontal.3")
                            .padding(.horizontal)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "line.horizontal.3.decrease.circle")
                            .padding(.horizontal)
                    }
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button(action: {}) {
                        Image(systemName: "aspectratio")
                        Text("Aspect Ratio")
                    }
                }
                
            }
            .tint(.blue)
        }
    }
}

struct Toolbar_Location_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_Location()
    }
}
