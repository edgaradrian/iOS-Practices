//
//  ToolbarItemGroup.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 04/06/22.
//

import SwiftUI

struct Toolbar_ToolbarItemGroup: View {
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(titulo: "", subtitulo: "ToolbarItemGroup", description: "Para mostrar multiples botones en el NavigationView, se utiliza el ToolbarItemGroup.")
                
                Spacer()
            }
            .font(.title)
            .navigationTitle("Toolbar")
            .toolbar {
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    Button(action: {}) {
                        Image(systemName: "aspectratio")
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "gearshape.fill")
                    }
                    
                }
                
            }
            .tint(.blue)
        }
    }
}

struct ToolbarItemGroup_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_ToolbarItemGroup()
    }
}
