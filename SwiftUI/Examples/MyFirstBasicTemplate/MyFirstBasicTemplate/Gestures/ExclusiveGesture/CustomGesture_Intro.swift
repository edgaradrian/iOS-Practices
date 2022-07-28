//
//  CustomGesture_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 28/07/22.
//

import SwiftUI

struct CustomGesture_Intro: View {
    
    struct StateForGestures {
        var degrees = 0.0
        var doubleTapped = false
    }
    
    @State private var stateForGestures = StateForGestures()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Gestos", subtitulo: "Gestos personalizados", description: "Si se requieren dos gestos o que sólo uno trabaje, entonces se debe usar la función de exclusividad.")
                
                Text("Pulsar dos veces o rotar")
                
                Image("packers")
                    .border(stateForGestures.doubleTapped ? Color.blue : Color.clear)
                    .shadow(radius: stateForGestures.doubleTapped ? 8 : 0)
                    .rotationEffect(.degrees(stateForGestures.degrees))
                    .gesture(
                        TapGesture(count: 2)
                            .onEnded({ () in
                                self.stateForGestures.doubleTapped.toggle()
                            })
                            .exclusively(before: RotationGesture()
                                .onChanged({ angle in
                                    self.stateForGestures.degrees = angle.degrees
                                })
                                        )
                    )
                
                Text("Rotación: \(stateForGestures.degrees)")
                
            }
            .font(.title)
        }
    }
}

struct CustomGesture_Intro_Previews: PreviewProvider {
    static var previews: some View {
        CustomGesture_Intro()
    }
}
