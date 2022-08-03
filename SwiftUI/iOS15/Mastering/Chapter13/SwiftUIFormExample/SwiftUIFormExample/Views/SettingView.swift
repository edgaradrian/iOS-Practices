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
    @State private var showCheckInOnly = false
    
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
                    Toggle(isOn: $showCheckInOnly) {
                        Text("Mostrar sólo registrados")
                    }
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
