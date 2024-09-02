//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Ewerson Castelo on 01/09/24.
//

import SwiftUI
import Firebase

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
