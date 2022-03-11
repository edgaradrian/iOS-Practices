//
//  ProgressView_Tint.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/03/22.
//

import SwiftUI

struct ProgressView_Tint: View {
    @State private var progress = 0.50
    var body: some View {
        
        VStack(spacing: 20) {
            HeaderView(titulo: "ProgressView", subtitulo: "Tint", description: "En iOS 15 ya se puede modificar el color del ProgressView.")
            
            ProgressView(value: progress) {
                HStack {
                    Spacer()
                    Text("Progress (\(Int(progress * 100))%)")
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            .tint(.cyan)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.yellow)
            )
            .padding(.horizontal)
            
            Text("Para la barra de progreso circular, se necesita poner el color en el modificador del estilo")
                .padding(.horizontal)
            
            ProgressView()
                .tint(.green)
            
        }
        .font(.title)
        
    }
}//ProgressView_Tint

struct ProgressView_Tint_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView_Tint()
    }
}
