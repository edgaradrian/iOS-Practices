//
//  NavigationView_BackButtonHidden.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/03/22.
//

import SwiftUI

struct NavigationView_BackButtonHidden: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.cyan
                
                VStack(spacing: 25) {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                    Text("NavigationView")
                        .font(.largeTitle)
                    Text("Back Button Hidden")
                        .foregroundColor(.gray)
                    Image(systemName: "rectangle.portrait.and.arrow.right.fill")
                    
                    NavigationLink("Ir al detalle ", destination: BackButtonHiddenDetail())
                    
                }
                .font(.title)
                .padding(.top, 70)
                
            }
            .navigationTitle("Navigation")
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct BackButtonHiddenDetail: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.cyan
            
            VStack(spacing: 25) {
                Image(systemName: "globe")
                    .font(.largeTitle)
                
                Text("NavigationView")
                    .font(.largeTitle)
                
                Text("Back Button Hidden")
                    .foregroundColor(.gray)
                
                Image(systemName: "arrowshape.turn.up.backward.fill")
                
                Text("Esta barra de navegación no tendrá botón de regreso porque está oculto.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        Color.cyan
                    )
                    .foregroundColor(.cyan)
                
                Button("Volver") {
                    dismiss()
                }
                
                Spacer()
                
            }
            .font(.title)
            .padding(.top, 50)
             
        }
        .navigationTitle("Detail View")
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea(edges: .bottom)
        .navigationBarBackButtonHidden(true)
    }
    
}

struct NavigationView_BackButtonHidden_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView_BackButtonHidden()
    }
}
