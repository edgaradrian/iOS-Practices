//
//  ContentView.swift
//  Chart_Steps
//
//  Created by Edgar Ruiz on 23/06/22.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        Chart {
            BarMark(
                x: .value("Día", "Lunes"),
                y: .value("Pasos", 1344)
                )
            
            BarMark(
                x: .value("Día", "Martes"),
                y: .value("Pasos", 714)
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
