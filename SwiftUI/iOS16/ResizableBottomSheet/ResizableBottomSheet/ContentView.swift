//
//  ContentView.swift
//  ResizableBottomSheet
//
//  Created by Edgar Ruiz on 23/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            Button {
                self.showSheet.toggle()
            } label: {
                Text("Mostrar hoja de fondo")
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $showSheet) {
                Text("Estoy dentro de una hoja de fondo con tamaño variable")
                    .presentationDetents([.medium])
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
