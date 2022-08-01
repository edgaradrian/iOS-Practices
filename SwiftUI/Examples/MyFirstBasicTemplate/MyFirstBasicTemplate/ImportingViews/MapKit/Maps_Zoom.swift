//
//  Maps_Zoom.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/08/22.
//

import SwiftUI
import MapKit

struct Maps_Zoom: View {
    
    @State private var zoom: CGFloat = 15
    @State private var mapCoordinate = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 19.4154, longitude: -99.0742), span: MKCoordinateSpan(latitudeDelta: 0, longitudeDelta: 0))
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "MapKit", subtitulo: "Acercamiento", description: "Acercamiento y alejamiento de un mapa usando el parámetro de abarcado.")
            
            Map(coordinateRegion: $mapCoordinate)
                .ignoresSafeArea(edges: .bottom)
                .padding(.top, -20)
            
            Slider(value: $zoom, in: 0.01...1, label: {}) {
                Image(systemName: "plus.magnifyingglass")
            } maximumValueLabel: {
                Image(systemName: "minus.magnifyingglass")
            }
            .padding(.horizontal)
            .tint(.blue)
            .onChange(of: zoom) { value in
                mapCoordinate.span.latitudeDelta = CLLocationDegrees(value)
                mapCoordinate.span.longitudeDelta = CLLocationDegrees(value)
            }

            
        }
        .font(.title)
    }
}

struct Maps_Zoom_Previews: PreviewProvider {
    static var previews: some View {
        Maps_Zoom()
    }
}
