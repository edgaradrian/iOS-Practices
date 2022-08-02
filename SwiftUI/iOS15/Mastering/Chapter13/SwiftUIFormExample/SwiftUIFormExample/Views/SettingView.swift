//
//  SettingView.swift
//  SwiftUIFormExample
//
//  Created by Edgar Adrián on 02/08/22.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("PREFERENCIA DE ORDEN")) {
                    Text("Mostrar orden")
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
