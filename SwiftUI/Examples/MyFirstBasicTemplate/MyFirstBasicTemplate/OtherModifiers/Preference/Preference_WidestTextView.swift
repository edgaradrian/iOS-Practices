//
//  Preference_WidestTextView.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 31/07/22.
//

import SwiftUI

struct UtilityModel: Identifiable {
    let id = UUID()
    var utility = ""
    var q1 = ""
    var q2 = ""
}//UtilityModel

struct Preference_WidestTextView: View {
    
    @State private var widestWidth: CGFloat = 0.0
    @State var data = [
        UtilityModel(utility: "Interné", q1: "$500.84", q2: "$4,678.90"),
        UtilityModel(utility: "Luz", q1: "$12,345.98", q2: "$68.12")
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Preferencia", subtitulo: "Vista de Texto más Amplia", description: "A veces es necesario poner otras vistas de texto más amplias que otras vista de texto en una lista.")
            
            Text("Anchura más amplia \(widestWidth)")
            
            VStack(spacing: 16) {
                
                ForEach(data) { d in
                    HStack(spacing: 16) {
                        Text(d.utility)
                        Spacer()
                        Text(d.q1)
                        Text(d.q2)
                            .fixedSize()
                            .background(
                                GeometryReader { geo in
                                    Color.clear
                                        .preference(key: WidestWidth.self, value: geo.size.width)
                                }
                            )
                            .frame(width: widestWidth, alignment: .trailing)
                            .padding(.horizontal)
                    }
                    .onPreferenceChange(WidestWidth.self) { value in
                        widestWidth = value
                    }
                }
                .font(.title3)
            }
            
        }
    }
    
}//Preference_WidestTextView

struct WidestWidth: PreferenceKey {
    
    static var defaultValue: CGFloat = 0.0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = value > nextValue() ? value : nextValue()
    }
    
}//WidestWidth

struct Preference_WidestTextView_Previews: PreviewProvider {
    static var previews: some View {
        Preference_WidestTextView()
    }
}
