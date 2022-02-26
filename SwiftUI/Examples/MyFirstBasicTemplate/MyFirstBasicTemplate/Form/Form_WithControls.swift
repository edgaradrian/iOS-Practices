//
//  Form_WithControls.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Form_WithControls: View {
    
    @State private var isOn = true
    @State private var textFieldData = "This is a text field"
    
    var body: some View {
        Form {
            Section {
                Text("Esto es un ejemplo de como diferentes controles son representados en un formulario.")
                    .foregroundColor(.white)
                    .listRowBackground(Color.cyan)
            } header: {
                Text("Controles en un formulario")
                    .font(.title)
                    .foregroundColor(Color.gray)
            }
            
            Section {
                Button(action: {}) { Text("Button") }
                Toggle(isOn: $isOn) {
                    Text("Toggle")
                }
                Stepper(onIncrement: {}, onDecrement: {}) {
                    Text("Stepper")
                }
                TextField("", text: $textFieldData)
                Image(systemName: "leaf.arrow.circlepath")
                    .font(.title)
                Circle()
                    .frame(height: 30)
                Text("Notar que las figuras son centradas.")
            }
        }
        .font(.title)
    }
}

struct Form_WithControls_Previews: PreviewProvider {
    static var previews: some View {
        Form_WithControls()
    }
}
