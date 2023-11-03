//
//  ContentView.swift
//  SwiftUIStacksExample
//
//  Created by Edgar Adrián on 01/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            HStack {
                PricingView(title: "Básico", price: "$89", textColor: .white, bgColor: .cyan)

                PricingView(title: "Pro", price: "$159", textColor: .black, bgColor: .red, promotionalText: "Opción para estudiantes")
                
                
            }
            
            PricingView(title: "Equipo", price: "$1499", textColor: .green, bgColor: .yellow, imageName: "wand.and.rays", promotionalText: "Para equipos de 15")
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Elige")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("Tu plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct PricingView: View {
    
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    var imageName = ""
    var promotionalText = ""
    
    var body: some View {
        
        ZStack {
            VStack {
                
                Image(systemName: imageName)
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.black)
                    .foregroundStyle(textColor)
                
                Text(title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundStyle(textColor)
                
                Text(price)
                    .font(.system(size: 40, weight: .heavy, design: .rounded))
                    .foregroundStyle(textColor)
                
                Text("Por mes")
                    .font(.headline)
                    .foregroundStyle(textColor)
                
            }
            .padding(40)
            .background(bgColor)
            .clipShape(Circle())
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 100)
            
            if promotionalText.count > 0 {
                Text(promotionalText)
                    .font(.system(.caption, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding(5)
                    .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                    .offset(x: 0, y: 90)
            }
        }
   
    }
}
