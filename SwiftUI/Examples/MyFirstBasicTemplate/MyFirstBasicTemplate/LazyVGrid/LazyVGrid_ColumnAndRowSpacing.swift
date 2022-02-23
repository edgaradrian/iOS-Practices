//
//  LazyVGrid_ColumnAndRowSpacing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 23/02/22.
//

import SwiftUI

struct LazyVGrid_ColumnAndRowSpacing: View {
    @State private var columnSpacing: CGFloat = 10
    @State private var rowSpacing: CGFloat = 20
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "LazyVGrid", subtitulo: "Spacing Example", description: "Sólo es para dar una idea de controlar el espacio de la columna y la fila.")
            
            let cols = [
                GridItem(.fixed(40), spacing: columnSpacing),
                GridItem(.fixed(40), spacing: columnSpacing),
                GridItem(.fixed(40), spacing: columnSpacing),
                GridItem(.fixed(40))
            ]
            
            LazyVGrid(columns: cols, spacing: rowSpacing) {
                ForEach(1 ..< 11) { item in
                    Color.green.frame(width: 40, height: 40)
                }
            }
            
            VStack {
                
                Slider(value: $columnSpacing, in: 0...40, step: 5, minimumValueLabel: Text("0"), maximumValueLabel: Text("40")) {
                    Text("Minimum Spacing")
                }
                
                Text("Column Spacing: \(Int(columnSpacing))")
                    .padding(.bottom)
                
                
                Slider(value: $rowSpacing, in: 0...40, step: 5, minimumValueLabel: Text("0"), maximumValueLabel: Text("40")) {
                    Text("Minimum Spacing")
                }
                
                Text("Row Spacing: \(Int(rowSpacing))")
                
            }
            .padding(.horizontal)
        
        
        }
        .font(.title)
    }
}

struct LazyVGrid_ColumnAndRowSpacing_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid_ColumnAndRowSpacing()
    }
}
