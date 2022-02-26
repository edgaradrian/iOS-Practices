//
//  Form_ListRowInset.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Form_ListRowInset: View {
    var body: some View {
        Form {
            Section {
                Text("List Row Inset")
                    .foregroundColor(.gray)
                Text("Puedes usar el modificador de listRowInsets para ajustar la sangría:")
                    .foregroundColor(.white)
                    .listRowBackground(Color.cyan)
                
                Text("Sangría Nivel 1")
                    .listRowInsets(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                
                Text("Sangría nivel 2")
                    .listRowInsets(EdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0))
                
                Text("Alineamiento Vertical")
                    .foregroundColor(.white)
                    .listRowBackground(Color.cyan)
                
                Text("Top")
                    .listRowInsets(EdgeInsets(top: -20, leading: 40, bottom: 0, trailing: 0))
                
                Text("Fondo")
                    .listRowInsets(EdgeInsets(top: 20, leading: 40, bottom: 0, trailing: 0))
                
            } header: {
                Text("Form")
                    .font(.title)
                    .foregroundColor(.gray)
            }
        }
        .font(.title2)
    }
}

struct Form_ListRowInset_Previews: PreviewProvider {
    static var previews: some View {
        Form_ListRowInset()
    }
}
