//
//  ContentView.swift
//  SwiftUIShapeExample
//
//  Created by Edgar Ruiz on 07/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let origin = CGPoint(x: 20, y: 60)
    let pointB = CGPoint(x: 40, y: 60)
    let pointC = CGPoint(x: 230, y: 60)
    let pointD = CGPoint(x: 230, y: 100)
    let pointE = CGPoint(x: 20, y: 100)
    
    var body: some View {
        Path() { path in
            path.move(to: origin)
            path.addLine(to: pointB)
            path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
            path.addLine(to: pointC)
            path.addLine(to: pointD)
            path.addLine(to: pointE)
        }
        .fill(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
