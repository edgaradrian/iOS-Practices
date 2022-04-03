//
//  Text_Measurement.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/04/22.
//

import SwiftUI

struct Text_Measurement: View {
    @State private var marathon = Measurement(value: 4.8, unit: UnitLength.miles)
    @State private var height = Measurement(value: 1.8, unit: UnitLength.meters)
    @State private var temperature = Measurement(value: 24, unit: UnitTemperature.celsius)
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Text", subtitulo: "Medición", description: "Usar el parámetro de formato con diferentes tipos de medida")
            
            Text(marathon, format: .measurement(width: .narrow))
            Text(marathon, format: .measurement(width: .abbreviated))
            Text(marathon, format: .measurement(width: .wide))
            
            DescView(description: "El formato es también conocedor de la ubicación", backColor: .blue)
            
            Text(height, format: .measurement(width: .wide))
            Text(temperature, format: .measurement(width: .abbreviated))
            
            DescView(description: "Especificar que se usen las medidas asignadas para evitar las de la ubicación", backColor: .blue)
            
            Text(height, format: .measurement(width: .wide, usage: .asProvided))
            Text(temperature, format: .measurement(width: .abbreviated, usage: .asProvided))
            
        }
        .font(.title)
    }
}

struct Text_Measurement_Previews: PreviewProvider {
    static var previews: some View {
        Text_Measurement()
    }
}
