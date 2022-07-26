//
//  LongPress_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 26/07/22.
//

import SwiftUI

struct LongPress_Intro: View {
    @State private var isLongPress = false
    @State private var isPressing = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Gestos", subtitulo: "Introducción presionado prolongado", description: "Usar el gesto de pulsado prolongado para ejecutar algunas acciones cuando el usuario a presionado una vista por mucho tiempo.")
            
            Text("Dejar presionado para abrir el candado")
            
            Image(systemName: isLongPress ? "lock.open.fill" : "lock.fill")
                .font(.system(size: 100))
                .padding()
                .foregroundColor(isLongPress ? .red : .blue)
                .onLongPressGesture(minimumDuration: 1) { isPressing in
                    self.isPressing = isPressing
                } perform: {
                    self.isLongPress.toggle()
                }

            Text("Manten presionado")
                .opacity(isPressing ? 1 : 0)
            
        }
        .font(.title)
    }
}

struct LongPress_Intro_Previews: PreviewProvider {
    static var previews: some View {
        LongPress_Intro()
    }
}
