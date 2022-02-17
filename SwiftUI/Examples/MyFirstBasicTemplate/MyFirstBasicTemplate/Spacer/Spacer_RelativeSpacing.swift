//
//  Spacer_RelativeSpacing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 17/02/22.
//

import SwiftUI

struct Spacer_RelativeSpacing: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Spacer")
                .font(.largeTitle)
            
            Text("Relative Spacing")
                .foregroundColor(.gray)
            
            Text("Tú puedes agregar más espacios y crear espacios relativos en comparación con otros espacios.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.blue)
            
            HStack(spacing: 50) {
                VStack(spacing: 5) {
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Text("33% Down")
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                }
                VStack(spacing: 5) {
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Text("75% Down")
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                }
                
            }
            
        }
        .font(.title)
    }
}

struct Spacer_RelativeSpacing_Previews: PreviewProvider {
    static var previews: some View {
        Spacer_RelativeSpacing()
    }
}
