//
//  VStack_Aligment.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/02/22.
//

import SwiftUI

struct VStack_Aligment: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("VStack")
                .font(.largeTitle)
            
            Text("Alignment")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Por omisión, las vistas dentro de un VStack están alineadas al centro")
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            
            VStack(alignment: .leading, spacing: 40) {
                Text("Leading Alignment")
                    .font(.title)
                Divider()
                Image(systemName: "arrow.left")
            }
            .padding()
            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: 10)
            )
            .foregroundColor(.blue)
            .padding()
            
            VStack(alignment: .trailing, spacing: 40) {
                Text("Trailing alignment")
                    .font(.title)
                Divider()
                Image(systemName: "arrow.right")
            }
            .padding()
            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: 10)
            )
            .foregroundColor(.blue)
            .padding()
            
            
        
            
            
        }
    }
}

struct VStack_Aligment_Previews: PreviewProvider {
    static var previews: some View {
        VStack_Aligment()
    }
}
