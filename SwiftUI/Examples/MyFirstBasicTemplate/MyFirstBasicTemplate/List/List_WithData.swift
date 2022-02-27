//
//  List_WithData.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/02/22.
//

import SwiftUI

struct List_WithData: View {
    
    var stringArray = ["Esta es una simple lista", "Aaron Rodgers", "Aaron Jones", "Davante Adams", "Randall Cobb", "JOrdy Nelson", "NOtar que envuelve el texto automáticamente cuando el texto es muy largo"]
    
    var body: some View {
        List(stringArray, id: \.self) { string in
            Text(string)
        }
        .font(.largeTitle)
    }
}

struct List_WithData_Previews: PreviewProvider {
    static var previews: some View {
        List_WithData()
    }
}
