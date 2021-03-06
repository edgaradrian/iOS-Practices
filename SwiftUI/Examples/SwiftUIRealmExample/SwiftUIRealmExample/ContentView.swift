//
//  ContentView.swift
//  SwiftUIRealmExample
//
//  Created by Edgar Ruiz on 30/10/20.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    
    @State private var name = ""
    @State private var age = ""
    @State private var address = ""
    
    let labels = ["Name:", "Age:", "Address:"]
    let config = Realm.Configuration(schemaVersion: 1)
    
    var body: some View {
        VStack {
            
            HStack {
                
                VStack(alignment: .leading) {
                    ForEach(labels, id: \.self) { label in
                        Text(label)
                            .font(.body)
                            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 4)
                    }
                }
                
                
                VStack {
                    TextField("Name", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Age", text: $age)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Address", text: $address)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding(.leading)
           
            }
            .padding(.horizontal)
            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)

            
            Button(action:{
                do {
                    let realm = try Realm(configuration: config)
                    let newPerson = New_Person()
                    newPerson.name = self.name
                    newPerson.age = self.age
                    newPerson.address = self.address
                    try realm.write {
                        realm.add(newPerson)
                        print("New person added")
                    }
                    
                } catch {
                    print(error.localizedDescription)
                }
                
            }) {
                Text("Save")
                    .font(.body)
                    .foregroundColor(.black)
                    .frame(width: 300, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.gray)
                    
            }//Button Save
            
            
            Button(action:{
                do {
                    let realm = try Realm(configuration: config)
                    let results = realm.objects(New_Person.self)
                    print(results)
                } catch {
                    print(error.localizedDescription)
                }
                
            }) {
                Text("Show results")
                    .font(.body)
                    .foregroundColor(.black)
                    .frame(width: 300, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.gray)
                    
            }//Button Show results
            
            
            Button(action:{
                do {
                    let realm = try Realm(configuration: config)
                    let results = realm.objects(New_Person.self)
            
                    for person in results {
                        
                        try realm.write {
                            
                            if person.name.uppercased() == "EDGAR" {
                                person.address = "Distrito Federal"
                                realm.add(person)
                            }
                            
                        }
                    }
                    print("Update completed!")
                    
                } catch {
                    print(error.localizedDescription)
                }
                
            }) {
                Text("Update")
                    .font(.body)
                    .foregroundColor(.black)
                    .frame(width: 300, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.gray)
                    
            }//Button Update
            
            
            Button(action:{
                do {
                    let realm = try Realm(configuration: config)
                    let results = realm.objects(New_Person.self)
            
                    for person in results {
                        
                        try realm.write {
                            
                            if person.name.uppercased() == "EDGAR" {
                                realm.delete(person)
                            }
                            
                        }
                    }
                    print("Delete completed!")
                    
                } catch {
                    print(error.localizedDescription)
                }
                
            }) {
                Text("Delete")
                    .font(.body)
                    .foregroundColor(.black)
                    .frame(width: 300, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.gray)
                    
            }//Button Delete
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
