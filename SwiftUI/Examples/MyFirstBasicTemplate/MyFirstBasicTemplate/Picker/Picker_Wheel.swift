//
//  Picker_Wheel.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/03/22.
//

import SwiftUI

struct Picker_Wheel: View {
    @State private var myColour = "Yellow"
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Picker", subtitulo: "Estilo Rueda", description: "Para cambiar es estilo de un Picker, se puede usar el modificador pickerStyle.")
            
            Picker("Color", selection: $myColour) {
                Text("Green").tag("Green")
                Text("Cyan").tag("Cyan")
                Text("Black").tag("Black")
                Text("Yellow").tag("Yellow")
                Text("Blue").tag("Blue")
            }
            .pickerStyle(.wheel)
            
        }
        .font(.title)
    }
}

struct Picker_Wheel_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Wheel()
    }
}
