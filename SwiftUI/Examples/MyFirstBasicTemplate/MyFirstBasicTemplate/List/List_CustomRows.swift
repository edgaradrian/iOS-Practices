//
//  List_CustomRows.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/02/22.
//

import SwiftUI

struct List_CustomRows: View {
    var data = ["Packers", "Aaron Rodgers", "Aaron Jones", "Davante Adams", "Randall Cobb", "JOrdy Nelson"]
    
    var body: some View {
        List(data, id: \.self) { string in
            CustomRow(content: string)
        }
    }
}

struct CustomRow: View {
    var content: String
    
    var body: some View {
        
        HStack {
            Image(systemName: "person.circle.fill")
            Text(content)
            Spacer()
        }
        .foregroundColor(content == "Packers" ? Color.green : Color.yellow)
        .font(.title)
        .padding([.top])
        
    }
}

struct List_CustomRows_Previews: PreviewProvider {
    static var previews: some View {
        List_CustomRows()
    }
}
