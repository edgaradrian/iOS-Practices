//
//  Path_QuadCurve.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 05/05/22.
//

import SwiftUI

struct Path_QuadCurve: View {
    var body: some View {
        VStack(spacing: 20) {
            
            RoundedBottomRectangle(curveOffset: 30)
                .fill(.cyan)
                .frame(height: 120)
                .shadow(radius: 8)
                .overlay(
                    Text("Path")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.top, 40)
                )
                .edgesIgnoringSafeArea(.top)
            
            Text("QuadCurve")
                .foregroundColor(.gray)
            
            Text("Aquí el ejemplo de cómo agregar una curva al path.")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .padding(.bottom)
                .background(
                    RoundedBottomRectangle(curveOffset: -30)
                        .fill(.cyan)
                        .shadow(radius: 4, y: 4)
                )
            
            Spacer()
            
        }
        .font(.title)
    }
}

struct Path_QuadCurve_Previews: PreviewProvider {
    static var previews: some View {
        Path_QuadCurve()
    }
}
