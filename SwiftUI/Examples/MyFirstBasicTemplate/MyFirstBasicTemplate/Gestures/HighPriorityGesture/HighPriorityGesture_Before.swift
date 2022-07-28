//
//  HighPriorityGesture_Before.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 28/07/22.
//

import SwiftUI

struct HighPriorityGesture_Before: View {
    
    @State private var alternateBackground = false
    @State private var alternateCircleColor = false
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 20) {
                HeaderView(titulo: "Gestos", subtitulo: "Gesto de alta prioridad", description: "Este es un escenario con dos gestos")
                
                Circle()
                    .fill(alternateCircleColor ? Color.cyan : Color.orange)
                    .frame(width: 200, height: 200)
                    .overlay(
                        Text("Tocar 2 veces")
                    )
                    .onTapGesture(count: 2) {
                        self.alternateCircleColor.toggle()
                    }
                
                Spacer()
                Text("Tocar 2 veces")
                    .foregroundColor(.blue)
                Spacer()
            }
            .font(.title)
            .highPriorityGesture(
                TapGesture(count: 2)
                    .onEnded({ () in
                        self.alternateBackground.toggle()
                    })
            )
            .ignoresSafeArea()
            
        }
    }
}

struct HighPriorityGesture_Before_Previews: PreviewProvider {
    static var previews: some View {
        HighPriorityGesture_Before()
    }
}
