//
//  CardView.swift
//  SwiftUIScrollViewExample
//
//  Created by Edgar Adrián on 17/11/23.
//

import SwiftUI

struct CardView: View {

    var body: some View {
        VStack() {
            Image("swiftui-button")
                .resizable()
            .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("SwiftUI")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                    
                    Text("Dibujando un borde con esquinas redondeadas")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.primary)
                        .lineLimit(3)
                    
                    Text("Por Edgar Adrián")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                
                Spacer()
            }
            .padding()
        }//Main VStack
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 1.0), lineWidth: 1)
        }
        .padding([.top, .horizontal])
    }
}//CardView

#Preview {
    CardView()
}
