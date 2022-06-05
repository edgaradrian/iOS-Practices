//
//  Toolbar_OnModalSheets.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 04/06/22.
//

import SwiftUI

struct Toolbar_OnModalSheets: View {
    
    @State private var showModal = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Artículo de barra de herramientas en un modal")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        Color.blue
                    )
                    .onTapGesture {
                        self.showModal = true
                    }
            }
            .font(.title)
            .navigationTitle("Barra de herramientas")
            .sheet(isPresented: $showModal) {
                ConfirmationView()
            }
        }
    }
}

struct Toolbar_OnModalSheets_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_OnModalSheets()
    }
}

struct ConfirmationView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Barra de herramientas", subtitulo: "En un modal", description: "Notar que los artículos en la barra de herramientas están en la cima.")
                
                Spacer()
            }
            .padding(.top)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Confirmar") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .destructiveAction) {
                    Button("Borrar") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancelar") {
                        dismiss()
                    }
                }
                
            }
            
        }
    }
    
}
