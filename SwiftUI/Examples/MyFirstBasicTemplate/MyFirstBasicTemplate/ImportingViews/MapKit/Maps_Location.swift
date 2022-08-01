//
//  Maps_Location.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/08/22.
//

import SwiftUI
import MapKit

struct Maps_Location: View {
    
    @State private var mapCoordinate = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 19.4154, longitude: -99.0742), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    private var aifa = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 19.7365, longitude: -99.0226), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    private var azteca = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 19.3030, longitude: -99.1502), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "MapKit", subtitulo: "Ubicaciones", description: "Se puede usar la longitud y latitud para poner la ubicación deseada.")
            
            HStack(spacing: 40) {
                
                Button("Ir al AIFA") {
                    mapCoordinate = aifa
                }
                
                Button("Ir al Azteca") {
                    mapCoordinate = azteca
                }
            }
            
            Map(coordinateRegion: $mapCoordinate)
                .ignoresSafeArea(edges: .bottom)
                .padding(.top, -20)
            
        }
        .font(.title)
    }
}

struct Maps_Location_Previews: PreviewProvider {
    static var previews: some View {
        Maps_Location()
    }
}
