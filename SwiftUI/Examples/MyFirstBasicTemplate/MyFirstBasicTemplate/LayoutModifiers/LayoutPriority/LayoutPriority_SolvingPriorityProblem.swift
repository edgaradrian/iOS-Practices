//
//  LayoutPriority_SolvingPriorityProblem.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/06/22.
//

import SwiftUI

struct LayoutPriority_SolvingPriorityProblem: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Prioridad de distribución", subtitulo: "Resolviendo prioridades", description: "Aquí un problema:")
            
            VStack(alignment: .leading) {
                Text("Green Bay Packers")
                    .font(.largeTitle)
                Text("Los Green Bay Packers son un equipo profesional de fútbol americano de los Estados Unidos. ")
                Text("Los Green Bay Packers son un equipo profesional")
                
            }
            .padding()
            
            Text("La vista de enmedio es truncada cuando se quiere expander")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .layoutPriority(2)
            
        }
        .layoutPriority(2)
    }
}

struct LayoutPriority_SolvingPriorityProblem_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriority_SolvingPriorityProblem()
    }
}
