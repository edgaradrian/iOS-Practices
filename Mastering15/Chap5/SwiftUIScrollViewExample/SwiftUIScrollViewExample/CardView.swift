//
//  CardView.swift
//  SwiftUIScrollViewExample
//
//  Created by Edgar Adrián on 17/11/23.
//

import SwiftUI

struct CardView: View {
    
    var image: String
    var category: String
    var heading: String
    var author: String

    var body: some View {
        VStack() {
            Image(image)
                .resizable()
            .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(category)
                        .font(.headline)
                        .foregroundStyle(.secondary)
                    
                    Text(heading)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.primary)
                        .lineLimit(3)
                        .minimumScaleFactor(0.5)
                    
                    Text(author)
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
    CardView(image: "swiftui-button", category: "SwiftUI", heading: "Dibujando un borde con esquinas redondeadas", author: "Por Edgar Adrián")
}
