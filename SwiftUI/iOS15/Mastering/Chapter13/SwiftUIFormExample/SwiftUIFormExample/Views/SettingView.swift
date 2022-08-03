//
//  SettingView.swift
//  SwiftUIFormExample
//
//  Created by Edgar Adrián on 02/08/22.
//

import SwiftUI

struct SettingView: View {
    
    private var displayOrders = ["Alfabéticamente", "Favoritos primero", "Registrados primero"]
    @State private var selectedOrder = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("PREFERENCIA DE ORDEN")) {
                    Picker(selection: $selectedOrder) {
                        ForEach(0 ..< displayOrders.count, id: \.self) {
                            Text(self.displayOrders[$0])
                        }
                    } label: {
                        Text("Ordenas por")
                    }

                }
                
                Section {
                    Text("Filtros")
                } header: {
                    Text("PREFERENCIA DE FILTROS")
                }

                
            }
            .navigationTitle("Ajustes")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
