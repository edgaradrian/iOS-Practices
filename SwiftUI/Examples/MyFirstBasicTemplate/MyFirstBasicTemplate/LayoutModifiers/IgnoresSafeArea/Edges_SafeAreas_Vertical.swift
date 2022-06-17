//
//  Edges_SafeAreas_Vertical.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/06/22.
//

import SwiftUI

struct Edges_SafeAreas_Vertical: View {
    var body: some View {
        HeaderView(titulo: "Área Segura", subtitulo: "Introducción", description: "El Área Segura es la parte de la pantalla donde las vistas se mostrarán completamente, sin ser cortadas por la muesca")
    }
}

struct Edges_SafeAreas_Vertical_Previews: PreviewProvider {
    static var previews: some View {
        Edges_SafeAreas_Vertical()
    }
}
