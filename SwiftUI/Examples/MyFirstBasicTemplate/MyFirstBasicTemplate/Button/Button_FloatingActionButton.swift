//
//  Button_FloatingActionButton.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/02/22.
//

import SwiftUI

struct Button_FloatingActionButton: View {
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                
                Text("Button")
                    .font(.largeTitle)
                
                Text("Floating")
                    .font(.title)
                    .foregroundColor(.gray)
                
                Text("También se pueden crear botones flotantes por usar un ZStack.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
                    .background(
                        Color.blue
                    )
                
                Spacer()
                
            }
            
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "plus")
                            .font(.title)
                    }
                    .padding(20)
                    .foregroundColor(.white)
                    .background(
                        Color.blue
                    )
                    .cornerRadius(.infinity)
                    
                }
                .padding(.trailing, 30)
            }
            
        }
    }
}

struct Button_FloatingActionButton_Previews: PreviewProvider {
    static var previews: some View {
        Button_FloatingActionButton()
    }
}
