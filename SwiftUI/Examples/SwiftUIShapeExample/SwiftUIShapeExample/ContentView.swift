//
//  ContentView.swift
//  SwiftUIShapeExample
//
//  Created by Edgar Ruiz on 07/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let origin = CGPoint(x: 20, y: 20)
    let pointB = CGPoint(x: 300, y: 20)
    let pointC = CGPoint(x: 300, y: 200)
    let pointD = CGPoint(x: 20, y: 200)
    
    var body: some View {
        Path() { path in
            path.move(to: origin)
            path.addLine(to: pointB)
            path.addLine(to: pointC)
            path.addLine(to: pointD)
        }
        .fill(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
