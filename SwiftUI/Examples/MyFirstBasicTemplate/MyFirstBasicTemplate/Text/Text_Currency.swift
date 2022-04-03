//
//  Text_Currency.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/04/22.
//

import SwiftUI

struct Text_Currency: View {
    @State private var amount = 48.61
    
    var body: some View {
        VStack(spacing: 10) {
            
            HeaderView(titulo: "Texto", subtitulo: "Divisas", description: "Utilizar el parámetro de formato con códigos diferentes para mostrar el simbolo de divisa aporpiado.")
            
            Text(amount, format: .currency(code: "USD"))
            Text(amount, format: .currency(code: "EUR"))
            Text(amount, format: .currency(code: "BRL"))
            Text(amount, format: .currency(code: "GBP"))
            Text(amount, format: .currency(code: "JPY"))
            Text(amount, format: .currency(code: "INR"))
            
        }
        .font(.title)
    }
}

struct Text_Currency_Previews: PreviewProvider {
    static var previews: some View {
        Text_Currency()
    }
}
