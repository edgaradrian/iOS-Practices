//
//  Dome.swift
//  SwiftUIShapeExample
//
//  Created by Edgar Ruiz on 07/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct Dome: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        let origin = CGPoint(x: 0, y: 0)
        
        path.move(to: origin)
        path.addQuadCurve(to: CGPoint(x: rect.size.width, y: 0), control: CGPoint(x: rect.size.width / 2, y: -(rect.size.width * 0.1)))
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        
        
        return path
        
    }//path
    
}//Dome
