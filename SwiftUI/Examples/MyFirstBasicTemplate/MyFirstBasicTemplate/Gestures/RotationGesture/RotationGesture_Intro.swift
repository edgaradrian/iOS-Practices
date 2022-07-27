//
//  RotationGesture_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/07/22.
//

import SwiftUI

struct RotationGesture_Intro: View {
    
    @State private var degrees = 0.0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                
                HeaderView(titulo: "Gestos", subtitulo: "Gesto de rotación", description: "Se puede rastrear la rotación del gesto y aplicar la rotación a la vista.")
                
                Text("Rotación: \(degrees)")
                
                Spacer()
                
                ZStack(alignment: .bottom) {
                    Image(systemName: "lock")
                        .font(.system(size: 500))
                        .foregroundColor(.blue)
                    
                    Image(systemName: "timelapse")
                        .font(.system(size: 120))
                        .rotationEffect(.degrees(degrees))
                        .gesture(
                            RotationGesture()
                                .onChanged({ angle in
                                    self.degrees = angle.degrees
                                })
                        )
                        .padding(30)
                        .background(
                            Circle()
                                .fill(Color.blue)
                        )
                        .padding(.bottom, 45)
                    
                    
                    
                }
                
            }
            .font(.title)
        }
    }
}

struct RotationGesture_Intro_Previews: PreviewProvider {
    static var previews: some View {
        RotationGesture_Intro()
    }
}
