//
//  SettingView.swift
//  SwiftUIFormExample
//
//  Created by Edgar Adrián on 02/08/22.
//

import SwiftUI

struct SettingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var selectedOrder = DisplayOrderType.alphabetichal
    @State private var showCheckInOnly = false
    @State private var maxPriceLevel = 5
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("PREFERENCIA DE ORDEN")) {
                    Picker(selection: $selectedOrder) {
                        ForEach(DisplayOrderType.allCases, id: \.self) { orderType in
                            Text(orderType.text)
                        }
                    } label: {
                        Text("Ordenas por")
                    }

                }
                
                Section {
                    Toggle(isOn: $showCheckInOnly) {
                        Text("Mostrar sólo registrados")
                    }
                    
                    Stepper("Mostrar \(String(repeating: "$", count: maxPriceLevel)) o menor") {
                        self.maxPriceLevel += 1
                        
                        if self.maxPriceLevel > 5 {
                            self.maxPriceLevel = 5
                        }
                        
                    } onDecrement: {
                        self.maxPriceLevel -= 1
                        
                        if self.maxPriceLevel < 1 {
                            self.maxPriceLevel = 1
                        }
                    }

                    
                } header: {
                    Text("PREFERENCIA DE FILTROS")
                }

                
            }
            .navigationTitle("Ajustes")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Cancelar")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Aceptar")
                    }

                }
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
