//
//  Chart_LineMark.swift
//  Chart_Steps
//
//  Created by Edgar Ruiz on 23/06/22.
//

import SwiftUI
import Charts

struct Chart_LineMark: View {
    let semana = Calendar.current.shortWeekdaySymbols
    let pasos = [1344, 714, 2893, 849, 1101, 2239, 9191]
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Mi segunda gráfica")
                .font(.largeTitle)
            Chart {
                ForEach(semana.indices, id: \.self) { index in
                    LineMark(
                        x: .value("Día", semana[index]),
                        y: .value("Pasos", pasos[index])
                    )
                    .foregroundStyle(.red)
                    .lineStyle(StrokeStyle(lineWidth: 4.0))
                }
            }
            .padding()
        }
    }
}

struct Chart_LineMark_Previews: PreviewProvider {
    static var previews: some View {
        Chart_LineMark()
    }
}
