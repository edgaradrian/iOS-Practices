//
//  Popover_FromBool.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 02/06/22.
//

import SwiftUI

struct Popover_FromBool: View {
    
    @State private var showPopover = false
    
    var body: some View {
        ZStack {
            
            Color.white
            
            Button {
                self.showPopover = true
            } label: {
                Image(systemName: "questionmark.circle.fill")
                    .font(.largeTitle)
            }
            .popover(isPresented: $showPopover, arrowEdge: .top) {
                VStack(spacing: 20) {
                    HeaderView(titulo: "Ventana Emergente", subtitulo: "Mostrado con booleano", description: "Al cambiar la variable State, se puede disparar la ventana emergente.")
                    
                    Button {
                        self.showPopover = false
                    } label: {
                        Text("Cerrar ventana emergente.")
                    }

                    
                }
            }

            
        }
        .ignoresSafeArea()
    }
}

struct Popover_FromBool_Previews: PreviewProvider {
    static var previews: some View {
        Popover_FromBool()
    }
}
