//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Edgar Adrián on 11/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            Button {
                print("Fui pulsado")
            } label: {
                Text("Púlsame")
                    .padding()
                    .foregroundStyle(Color.white)
                    .font(.title2)
                    .fontWeight(.bold)
                    .background(Color.cyan)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(8)
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.cyan, lineWidth: 4)
                    }
            }
            
            Button {
                print("Botón de borrado pulsado.")
            } label: {
                Label(
                    title: {
                        Text("Borrar")
                            .fontWeight(.semibold)
                            .font(.title)
                    },
                    icon: {
                        Image(systemName: "trash")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(MyButtonBackgroundStyle())
            
            Button {
                print("Botón de editado pulsado.")
            } label: {
                Label(
                    title: {
                        Text("Editar")
                            .fontWeight(.semibold)
                            .font(.title)
                    },
                    icon: {
                        Image(systemName: "square.and.pencil")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(MyButtonBackgroundStyle())
            
            Button {
                print("Botón de compartir pulsado.")
            } label: {
                Label(
                    title: {
                        Text("Compartir")
                            .fontWeight(.semibold)
                            .font(.title)
                    },
                    icon: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(MyButtonBackgroundStyle())

        }
        .padding()
    }
}//ContentView

#Preview {
    ContentView()
}