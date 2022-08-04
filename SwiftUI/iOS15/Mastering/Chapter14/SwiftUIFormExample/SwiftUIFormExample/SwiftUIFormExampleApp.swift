//
//  SwiftUIFormExampleApp.swift
//  SwiftUIFormExample
//
//  Created by Edgar Adrián on 02/08/22.
//

import SwiftUI

@main
struct SwiftUIFormExampleApp: App {
    
    var settingStore = SettingStore()
    var body: some Scene {
        WindowGroup {
            ContentView(settingStore: settingStore)
        }
    }
}
