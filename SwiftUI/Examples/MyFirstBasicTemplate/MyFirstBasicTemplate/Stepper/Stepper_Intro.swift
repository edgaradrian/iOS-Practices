//
//  Stepper_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 16/03/22.
//

import SwiftUI

struct Stepper_Intro: View {
    
    @State private var stepperValue = 1
    @State private var values = [0, 1]
    
    var body: some View {
        VStack {
            HeaderView(titulo: "Stepper", subtitulo: "Introducción", description: "El Stepper puede ser ligado a una variable así:")
            
            Stepper(value: $stepperValue) {
                Text("Bound Stepper: \(stepperValue)")
            }
            .padding(.horizontal)
            
            Divider()
            
            Image(systemName: "bolt.fill")
                .font(.title)
                .foregroundColor(.yellow)
            
            Text("O se puede incrementar o disminuir eventos: ")
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Color.blue
                )
                .foregroundColor(.white)
                .font(.title)
            
            Stepper {
                self.values.append(self.values.count)
            } onDecrement: {
                self.values.removeLast()
            } label: {
                Text("Incrementar o disminuir")
            }
            .padding(.horizontal)
            
            HStack {
                ForEach(values, id: \.self) { value in
                    Image(systemName: "\(value).circle.fill")
                }
            }
            .font(.title)
            .foregroundColor(.cyan)

            
        }
    }
}

struct Stepper_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Stepper_Intro()
    }
}
