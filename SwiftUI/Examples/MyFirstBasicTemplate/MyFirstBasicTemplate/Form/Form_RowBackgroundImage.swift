//
//  Form_RowBackgroundImage.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Form_RowBackgroundImage: View {
    var body: some View {
        Form {
            Section {
                Text("List Row Background")
                    .foregroundColor(.gray)
                Text("Las imágenes trabajan un poco diferente.")
                Text("La imagen se colocó en una fila de la segunda sección.")
            } header: {
                Text("Form")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Section {
                Text("Una imagen es colocado como fondo en la fila de abajo. Esto trabaja bien para las filas, pero si se pone una imagen en ua sección, es repetida en todas las filas.")
                Text("Esta image en puesta en esta fila y se extiende más allá de sus límites.")
                    .foregroundColor(.white)
                    .listRowBackground(Image("Lambeau_Field")
                                        .blur(radius: 3))
                Text("Este texto no se puede ver")
            } header: {
                Text("Images")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
        .font(.title2)
    }
}

struct Form_RowBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        Form_RowBackgroundImage()
    }
}
