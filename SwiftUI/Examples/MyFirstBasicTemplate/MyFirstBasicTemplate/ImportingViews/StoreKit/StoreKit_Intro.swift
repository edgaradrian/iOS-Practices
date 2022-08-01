//
//  StoreKit_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/08/22.
//

import SwiftUI
import StoreKit

struct StoreKit_Intro: View {
    
    @State private var showApp = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "StoreKit", subtitulo: "Introducción", description: "Se puede recomendar otras app en AppStore usando StoreKit con SwiftUI")
            
            Button("Ve esta app") {
                self.showApp.toggle()
            }
            
        }
        .font(.title)
        .appStoreOverlay(isPresented: $showApp) {
            SKOverlay.AppConfiguration(appIdentifier: "AquíElBundle", position: .bottom)
        }
    }
}

struct StoreKit_Intro_Previews: PreviewProvider {
    static var previews: some View {
        StoreKit_Intro()
    }
}
