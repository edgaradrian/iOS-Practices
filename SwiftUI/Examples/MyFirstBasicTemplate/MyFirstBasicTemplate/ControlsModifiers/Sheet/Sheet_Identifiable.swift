//
//  Sheet_Identifiable.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 02/06/22.
//

import SwiftUI

struct DetailInfo: Identifiable {
    var id = UUID()
    let image: Image
}

struct Sheet_Identifiable: View {
    
    @State private var details: DetailInfo? = nil
    
    var body: some View {
        Button("Mostrar Detalles") {
            details = DetailInfo(image: Image(systemName: "star.circle"))
        }
        .sheet(item: $details) { detailInfo in
            DetailSheet(details: detailInfo)
        }
    }
}

struct Sheet_Identifiable_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_Identifiable()
    }
}

struct DetailSheet: View {
    @Environment(\.dismiss) var dismiss
    let details: DetailInfo
    
    var body: some View {
        VStack(spacing: 20) {
            details.image
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            Spacer()
            Button("Descartar") {
                dismiss()
            }
            .tint(.blue)
            
        }
        .padding(.top, 40)
    }
    
}

