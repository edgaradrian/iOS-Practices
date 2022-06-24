//
//  ContentView.swift
//  MultiDatePicker
//
//  Created by Edgar Ruiz on 23/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedDates: Set<DateComponents> = []
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Mi primer seleccionador multifechas")
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(
                    Color.blue
                )
            
            MultiDatePicker("Elige los cumpleaños familiares", selection: $selectedDates)
                .frame(height: 300)
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
