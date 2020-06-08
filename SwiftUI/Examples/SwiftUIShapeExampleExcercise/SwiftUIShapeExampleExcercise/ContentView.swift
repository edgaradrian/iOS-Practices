//
//  ContentView.swift
//  SwiftUIShapeExampleExcercise
//
//  Created by Edgar Ruiz on 07/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private var origin = CGPoint(x: 20, y: 20)
    private var destiny = CGPoint(x: 220, y: 20)
    
    var body: some View {
        Path() { path in
            path.move(to: origin)
            path.addQuadCurve(to: destiny, control: CGPoint(x: 120, y: -10))
            path.addLine(to: CGPoint(x: 220, y: 60))
            path.addLine(to: CGPoint(x: 20, y: 60))
        }
        .fill(Color(.systemTeal))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
