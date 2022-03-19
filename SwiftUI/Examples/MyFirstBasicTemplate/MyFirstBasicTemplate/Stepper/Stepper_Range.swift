//
//  Stepper_Range.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/03/22.
//

import SwiftUI

struct Stepper_Range: View {
    @State private var stars = 0
    
    var body: some View {
        HeaderView(titulo: "Stepper", subtitulo: "Rango de valores", description: "Se puede poner un rango de valores para el stepper también. En este ejemplo, el rango es entre 1 y 5.")
        
        Stepper(value: $stars, in: 1...5) {
            Text("Rating")
        }
        .padding(.horizontal)
        
        HStack {
            ForEach(1...stars, id: \.self) { star in
                Image(systemName: "star.fill")
            }
        }
        .font(.title)
        .foregroundColor(.yellow)
        
    }
}

struct Stepper_Range_Previews: PreviewProvider {
    static var previews: some View {
        Stepper_Range()
    }
}
