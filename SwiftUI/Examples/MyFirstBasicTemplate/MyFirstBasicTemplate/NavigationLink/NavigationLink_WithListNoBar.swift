//
//  NavigationLink_WithListNoBar.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/03/22.
//

import SwiftUI

struct NavigationLink_WithListNoBar: View {
    @State var libros = ["Los relámpagos de Agosto", "Doctor Sueño", "Guerra en el paraíso"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(libros, id: \.self) { libro in
                        NavigationLink(destination: BookDetail_NoBack(bookItem: libro)) {
                            Text(libro)
                                .font(Font.system(size: 24))
                                .padding()
                        }
                    }
                } header: {
                    Text("Libros")
                        .font(.title)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Lista de Libros")
            .navigationBarHidden(true)
            
        }
    }
    
}//NavigationLink_WithListNoBar

struct BookDetail: View {
    var bookItem: String!
    
    var body: some View {
        
        VStack {
            Text("Detalles")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
            Spacer()
            Text(bookItem)
                .font(.title)
            Spacer()
        }
        .navigationTitle(bookItem)
        
    }
    
}//BookDetail

struct BookDetail_NoBack: View {
    @Environment(\.dismiss) var dismiss
    var bookItem: String!
    
    var body: some View {
        VStack {
            
            Text("Detalle Libros")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Color.cyan
                )
                .foregroundColor(.cyan)
            
            Spacer()
            
            Text(bookItem)
                .font(.title)
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack {
                    Image(systemName: "arrow.left.circle")
                    Text("Regresar")
                }
            }

            Spacer()
            
        }
        .navigationTitle(bookItem)
        .navigationBarHidden(true)
    }
    
}//BookDetail_NoBack

struct NavigationLink_WithListNoBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLink_WithListNoBar()
    }
}
