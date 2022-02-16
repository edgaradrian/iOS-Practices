//
//  ZStack_Background_Problem.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 16/02/22.
//

import SwiftUI

struct ZStack_Background_Problem: View {
    var body: some View {
        ZStack {
            
            Color.gray
            
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Ignores Safe Area Edges")
                    .foregroundColor(.white)
                
                Text("Hay un problemas con el ignoresSafeArea en el Zstack, hace que el texto quede atrás del notch")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        Color.red
                    )
                
                Spacer()
                
            }
            .font(.title)
        }
        .ignoresSafeArea()
    }
}

struct ZStack_Background_Problem_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_Background_Problem()
    }
}
