//
//  ContentView.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 08/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var newItemName: String = ""
    @State private var newItemPriority: Priority = .normal
    @State private var showNewTask = false
    
    //SearchBar
    @State private var searchText = ""
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                HStack {
                    Text("Cosas por hacer")
                        .font(.system(size: 40, weight: .black, design: .rounded))
                        
                    Spacer()
                    
                    Button(action: {
                        self.showNewTask = true
                        
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.cyan)
                    }
                }
                .padding()
                
                CustomSearchBar(text: $searchText)
                    .padding(.top, 20)
                
                FilteredList($searchText)
                
            }
            .rotation3DEffect(Angle(degrees: showNewTask ? 5 : 0), axis: (x: 1, y: 0, z: 0))
            .offset(y: showNewTask ? -50 : 0)
            .animation(.easeOut, value: showNewTask)
            .onAppear {
                UITableView.appearance().separatorColor = .clear
            }
            
            if showNewTask {
                BackgroundView(bgColor: .black)
                    .opacity(0.5)
                    .onTapGesture {
                        self.showNewTask = false
                    }
                
                NewToDoView(isShow: $showNewTask, name: "", priority: .normal)
                    .transition(.move(edge: .bottom))
                    .animation(.interpolatingSpring(stiffness: 200.0, damping: 25.0, initialVelocity: 10.0), value: showNewTask)
            }//showNewTask
            
        }
        
    }//body
    
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.managedObjectContext, PersistanceController.preview.container.viewContext)
    }
}//ContentView_Previews



