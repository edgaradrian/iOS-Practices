//
//  HStack_Alignment.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 12/02/22.
//

import SwiftUI

struct HStack_Alignment: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("HStack")
                .font(.largeTitle)
            
            Text("Vertical Alingment")
                .foregroundColor(.gray)
            
            Text("Por omisión, las vistas dentro de un HStack, son alineadas al centro")
                .frame(maxWidth: .infinity)
                .foregroundColor(.black)
                .padding()
                .background(Color.orange)
            
            HStack {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing")
                    .padding(.trailing)
            }
            .border(Color.orange)
            
            HStack(alignment: .top) {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Top")
                Spacer()
                Text("Trailing")
                    .padding(.trailing)
            }
            .border(Color.orange)
            
            HStack(alignment: .bottom) {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Bottom")
                Spacer()
                Text("Trailing")
                    .padding(.trailing)
            }
            .border(Color.orange)
            
            
        }
        .font(.title)
    }
}

struct HStack_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        HStack_Alignment()
    }
}
