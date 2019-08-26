//
//  MapView.swift
//  MyFirstSwiftUIProject
//
//  Created by Edgar Adrián on 26/08/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MapView.UIViewType {
        MKMapView(frame: .zero)
    }//makeUIView
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 19.432747, longitude: -99.133518)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }//updateUIView
    
}//struct MapView

#if DEBUG
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
