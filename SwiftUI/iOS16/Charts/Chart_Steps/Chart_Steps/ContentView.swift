//
//  ContentView.swift
//  Chart_Steps
//
//  Created by Edgar Ruiz on 23/06/22.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    let semana = Calendar.current.shortWeekdaySymbols
    let pasos = [1344, 714, 2893, 849, 1101, 2239, 9191]
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Mi primera gráfica")
                .font(.largeTitle)
            Chart {
                ForEach(semana.indices, id: \.self) { index in
                    BarMark(
                        x: .value("Día", semana[index]),
                        y: .value("Pasos", pasos[index])
                    )
                    .foregroundStyle(by: .value("Día", semana[index]))
                    .annotation {
                        Text("\(pasos[index])")
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
