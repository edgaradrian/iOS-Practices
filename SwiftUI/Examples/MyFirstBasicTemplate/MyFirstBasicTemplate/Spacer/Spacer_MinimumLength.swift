//
//  Spacer_MinimumLength.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 17/02/22.
//

import SwiftUI

struct Spacer_MinimumLength: View {
    var body: some View {
        
        VStack(spacing: 10) {
        
            Text("Spacer")
                .font(.largeTitle)
        
            Text("Minimum Length")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Tú puedes poner un mínimo de espacio entre dos vistas usando el  modificador minLength")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.blue)
                .background(
                    Color.yellow
                )
            
            Text("No se coloca minLength")
            
            HStack {
                Image("Lambeau_Field")
                    .resizable()
                Spacer()
                Text("This is Lambeau Field")
                    .lineLimit(1)
            }
            .padding()
            
            Text("minLength = 0")
                .bold()
            
            HStack {
                Image("Lambeau_Field")
                    .resizable()
                Spacer(minLength: 0)
                Text("This is Lambeau Field")
            }
            .padding()
            
            Text("minLength = 20")
                .bold()
            
            HStack {
                Image("Lambeau_Field")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer(minLength: 20)
                Text("This is Lambeau Field")
                    .lineLimit(1)
            }
            .padding()
            
        
        }
    }
}

struct Spacer_MinimumLength_Previews: PreviewProvider {
    static var previews: some View {
        Spacer_MinimumLength()
    }
}
