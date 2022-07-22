//
//  CustomStyling_ManyControls.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 22/07/22.
//

import SwiftUI

struct CustomStyling_ManyControls: View {
    
    @State private var toggleState = true
    @State private var text = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Modificador de vista", subtitulo: "Aplicado a muchos controles", description: "Se puede aplicar a distinto controles y vistas.")
                
                Button("Aplicado a botón", action: {})
                    .modifier(TextBanner())
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                HStack {
                    Text("Aplicado a simbolos")
                    Image(systemName: "eyedropper")
                    Image(systemName: "eyedropper.halffull")
                    Image(systemName: "eyedropper.full")
                }
                .modifier(TextBanner())
                
                Toggle("Aplicado a un alternador", isOn: $toggleState)
                    .modifier(TextBanner())
 
                TextField("Aplicado a un campo de texto", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .modifier(TextBanner())
                    .foregroundColor(.primary)
                
                HStack {
                    Text("Aplicado a formas")
                    Circle()
                        .frame(height: 30)
                    RoundedRectangle(cornerRadius: 5)
                }
                .modifier(TextBanner())
                
            }
            .minimumScaleFactor(0.5)
        }
    }
}

struct CustomStyling_ManyControls_Previews: PreviewProvider {
    static var previews: some View {
        CustomStyling_ManyControls()
    }
}
