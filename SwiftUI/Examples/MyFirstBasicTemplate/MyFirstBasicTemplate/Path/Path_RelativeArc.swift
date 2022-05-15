//
//  Path_RelativeArc.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 15/05/22.
//

import SwiftUI

struct Path_RelativeArc: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Path", subtitulo: "Relative Arc", description: "Se utiliza .addRelativeArc para crear una proción de un círculo.")
            
            VStack(spacing: 0) {
                DomeShape()
                    .fill(Color.blue)
                Rectangle()
                    .fill(Color.blue)
            }
            .padding(.horizontal)
            
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
    }
}

struct Path_RelativeArc_Previews: PreviewProvider {
    static var previews: some View {
        Path_RelativeArc()
    }
}
