//
//  MapKit_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/08/22.
//

import SwiftUI
import MapKit

struct MapKit_Intro: View {
    @State private var mapCoordinate = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 19.4154, longitude: -99.0742), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "MapKit", subtitulo: "Introducción", description: "Se puede usar la vista de MApa para mostrar mapas en las apps. Se liga su lugar de origen como variable de estado.")
            
            Map(coordinateRegion: $mapCoordinate)
                .ignoresSafeArea(edges: .bottom)
                .padding(.top, -20)
            
        }
        .font(.title)
    }
    
}

struct MapKit_Intro_Previews: PreviewProvider {
    static var previews: some View {
        MapKit_Intro()
    }
}
