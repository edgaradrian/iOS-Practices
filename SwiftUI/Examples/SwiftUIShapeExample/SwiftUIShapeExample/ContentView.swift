//
//  ContentView.swift
//  SwiftUIShapeExample
//
//  Created by Edgar Ruiz on 07/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let origin = CGPoint(x: 200, y: 200)
    
    var body: some View {
        
        Path() { path in
            path.move(to: origin)
            path.addArc(center: origin, radius: 125, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 90), clockwise: true)
        }
        .fill(Color.blue)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
