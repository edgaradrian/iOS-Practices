//
//  GeometryReader_MinMidMax.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/02/22.
//

import SwiftUI

struct GeometryReader_MinMidMax: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "GeometryReader", subtitulo: "Min Mid Max", description: "También se puede obtener el mínimo (Min), medio (Mid) y máximo (Max) de las coordenas X y Y del cuadro del GeometryReader")
            GeometryReader { geometry in
                VStack(alignment: .leading, spacing: 20) {
                    Text("Local coordinate Space")
                    HStack(spacing: 10) {
                        Text("minX: \(Int(geometry.frame(in: .local).minX))")
                        Spacer()
                        Text("midX: \(Int(geometry.frame(in: .local).midX))")
                        Spacer()
                        Text("maxX: \(Int(geometry.frame(in: .local).maxX))")
                    }
                    Text("Global coordinate space")
                    HStack(spacing: 10) {
                        Text("minX: \(Int(geometry.frame(in: .global).minX))")
                        Spacer()
                        Text("midX: \(Int(geometry.frame(in: .global).midX))")
                        Spacer()
                        Text("maxX: \(Int(geometry.frame(in: .global).maxX))")
                    }
                }
                .padding(.horizontal)
            }
            .frame(height: 200)
            .foregroundColor(.white)
            .background(Color.yellow)
            
            
            HStack {
                GeometryReader { geometry in
                    VStack(spacing: 10) {
                        Text("minY: \(Int(geometry.frame(in: .global).minY))")
                        Spacer()
                        Text("midY: \(Int(geometry.frame(in: .global).midY))")
                        Spacer()
                        Text("maxY: \(Int(geometry.frame(in: .global).maxY))")
                    }
                    .padding(.vertical)
                }
                .foregroundColor(.white)
                .background(Color.yellow)
                
                Image("MinMidMax")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            }
            
        }
        .font(.title)
        .padding()
    }
}

struct GeometryReader_MinMidMax_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_MinMidMax()
    }
}
